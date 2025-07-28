#include <stdio.h>
#include <stdlib.h>

#include "utils.hpp"
char sing[4] = { 0x4E, 0x45, 0x53, 0x1A };
int prgRomDataLenght; // program rom read only, machine coed
int chrRomDataLenght; // character rom  not necessary

char mapper = 0;

unsigned char *fileBuffer;

unsigned char &addressBus (unsigned short index_);

// PRG ROM: 2 x 16KiB = 32 KiB
//  CHR ROM: 1 x  8KiB = 8 KiB
//  ROM CRC32: 0x1870c44f
//  ROM MD5:  0xa70b1a42c14751e53e00163258ecddd9
//  Mapper #: 0
//  Mapper name: NROM
//  Mirroring: Vertical
//  Battery-backed: No
//  Trained: No

// NV1B DIZC
// |||| ||||
// |||| |||+- Carry
// |||| ||+-- Zero
// |||| |+--- Interrupt Disable
// |||| +---- Decimal
// |||+------ (No CPU effect; see: the B flag)
// ||+------- (No CPU effect; always pushed as 1)
// |+-------- Overflow
// +--------- Negative

unsigned char branchFlagsConditions[8]
    = { 1 << 7, 1 << 7, 1 << 6, 1 << 6, 1, 1, 1 << 1, 1 << 1 };
bool branchFlagsConditionsInvert[8]
    = { true, false, true, false, true, false, true, false };

enum FLAG
{
    CARRY_FLAG,
    ZERO_FLAG,
    INTERRUPT_DISABLE_FLAG,
    DECIMAL_FLAG,
    B_FLAG,
    ONE_FLAG,
    OVERFLOW_FLAG,
    NEGATIVE_FLAG
};

struct _MEMORY
{
    unsigned char &
    operator[] (size_t i)
    {
        return addressBus ((unsigned short)i);
    }
};

struct _CPU
{
    unsigned char RAM[0x800];
    unsigned char rA, rX, rY, rSP, flags;
    unsigned short rPC;
    _MEMORY memory;
    void
    enableFlag (FLAG flag)
    {
        setFlag (flag, 1);
    }
    void
    disableFlag (FLAG flag)
    {
        setFlag (flag, 0);
    }
    void
    setFlag (FLAG flag, bool b)
    {
        if (b)
            {
                flags = flags | (1 << flag);
                return;
            }
        else
            {
                flags = flags & ~(1 << flag);
                return;
            }
    }
    bool
    getFlag (FLAG flag)
    {
        return (flags & (1 << flag)) >> flag;
    }
    void
    cleanFlags ()
    {
        flags = 0;
    }
};

static _CPU cpu;

// buffer = cpu.memory[cpu.memory[++cpu.rPC]+(cpu.rX+cpu.memory[++cpu.rPC]<<8)
// + cpu.rX];
// 11000 = opcode_ & 0b11111
// opcode_ = bbb11000
void
opcode ()
{
    unsigned char temp_b;
    unsigned char opcode_ = cpu.memory[cpu.rPC];
    unsigned char *buffer = &temp_b; // is the id of the memo
    char table = opcode_ & 0b11;
    unsigned char line = (opcode_ >> 4) / 2; // FIRST LINE IS 0
    char test = opcode_ & 0b11111;           // 1F
    cpu.rPC++;
    switch (table) // little endian
        {
        case 0:
            {
                switch (test)
                    {

                    case 0x0: // BREAK
                        switch (line)
                            {
                            case 0:
                                {

                                    cpu.memory[0x100 + cpu.rSP] = cpu.rPC + 1;
                                    cpu.rSP--;
                                    cpu.memory[0x100 + cpu.rSP] = cpu.flags;
                                    cpu.rSP--;
                                    cpu.enableFlag (INTERRUPT_DISABLE_FLAG);
                                    cpu.enableFlag (B_FLAG);
                                    return;
                                }
                            case 1:
                                { // JSR
                                    cpu.memory[0x100 + cpu.rSP] = cpu.rPC + 1;
                                    cpu.rSP--;
                                    cpu.rPC = cpu.memory[cpu.rPC]
                                              + (cpu.memory[++cpu.rPC] << 8);
                                    return;
                                }
                            case 2:
                                {              // RTI
                                    cpu.rPC--; // all no arguments intructions
                                               // need to
                                    // decrement rPC
                                    cpu.rSP++;
                                    cpu.flags = cpu.memory[0x100 + cpu.rSP];
                                    cpu.rSP++;
                                    cpu.rPC = cpu.memory[0x100 + cpu.rSP];
                                    cpu.disableFlag (B_FLAG);
                                    return;
                                }
                            case 3:
                                {              // RTS
                                    cpu.rPC--; // all no arguments intructions
                                               // need to decrement rPC
                                    cpu.rSP++;
                                    cpu.rPC = cpu.memory[0x100 + cpu.rSP] + 1;
                                    return;
                                }
                            case 4:
                                return;
                            case 5:
                            case 6:
                            case 7:
                                buffer = &cpu.memory[cpu.rPC];
                                break;
                            }
                        break;
                    case 0x4:
                        {
                            switch (line)
                                {
                                case 0x1: // BIT
                                    buffer = &cpu.memory[cpu.memory[cpu.rPC]];
                                    return;
                                case 0x0:
                                case 0x2:
                                case 0x3:
                                    return;
                                default:
                                    buffer = &cpu.memory[cpu.memory[cpu.rPC]];
                                    break;
                                }
                            break;
                        }

                    case 0x8:
                        {
                            cpu.rPC--; // all no arguments intructions need to
                                       // decrement rPC
                            switch (line)
                                {
                                case 0:
                                    cpu.memory[0x100 + cpu.rSP] = cpu.flags;
                                    cpu.rSP--;
                                    return;
                                case 1:
                                    cpu.rSP++;
                                    cpu.flags = cpu.memory[0x100 + cpu.rSP];
                                    return;
                                case 2:
                                    cpu.memory[0x100 + cpu.rSP] = cpu.rA;
                                    cpu.rSP--;
                                    return;
                                case 3:
                                    cpu.rSP++;
                                    cpu.rA = cpu.memory[0x100 + cpu.rSP];
                                    return;
                                case 4:
                                    cpu.rY--;
                                    return;
                                case 5:
                                    buffer = &cpu.rA;
                                    break;
                                case 6:
                                    cpu.rY++;

                                    return;
                                case 7:
                                    cpu.rX++;
                                    return;
                                }
                            break;
                        }
                    case 0xc:
                        {
                            switch (line)
                                {
                                case 0:
                                    cpu.rPC++; // absolute NOP
                                    return;
                                case 2:
                                    cpu.rPC = cpu.memory[cpu.rPC]
                                              + (cpu.memory[++cpu.rPC] << 8);
                                    return;
                                case 3:
                                    cpu.rPC
                                        = cpu.memory[cpu.memory[cpu.rPC]
                                                     + (cpu.memory[++cpu.rPC]
                                                        << 8)];
                                    return;

                                default:
                                    buffer
                                        = &cpu.memory[cpu.memory[cpu.rPC]
                                                      + (cpu.memory[++cpu.rPC]
                                                         << 8)];
                                    break;
                                }
                        }
                    case 0x10:
                        for (unsigned char a = 0; a < 8; a++)
                            {

                                if (branchFlagsConditionsInvert[a]
                                        && ~(branchFlagsConditions[a]
                                             & cpu.flags)
                                    || ~branchFlagsConditionsInvert[a]
                                           && (branchFlagsConditions[a]
                                               & cpu.flags))
                                    {
                                        cpu.rPC = 1
                                                  + (signed char)
                                                        cpu.memory[cpu.rPC];
                                        return;
                                    }
                            }
                        return;
                    case 0x14:
                        {
                            if (line == 4 || line == 5) // d,x
                                {
                                    buffer = &cpu.memory[cpu.memory[cpu.rPC]
                                                         + cpu.rX];
                                    break;
                                }
                            return;
                        }
                    case 0x18:
                        {
                            switch (line)
                                {
                                case 0:
                                    cpu.disableFlag (CARRY_FLAG);
                                    return;
                                case 1:
                                    cpu.enableFlag (CARRY_FLAG);
                                    return;
                                case 2:
                                    cpu.disableFlag (INTERRUPT_DISABLE_FLAG);
                                    return;
                                case 3:
                                    cpu.enableFlag (INTERRUPT_DISABLE_FLAG);
                                    return;
                                case 4:
                                    buffer = &cpu.rA;
                                    break;
                                case 5:
                                    cpu.disableFlag (OVERFLOW_FLAG);
                                    return;
                                case 6:
                                    cpu.disableFlag (DECIMAL_FLAG);
                                    return;
                                case 7:
                                    cpu.enableFlag (DECIMAL_FLAG);
                                    return;
                                }
                            break;
                        }
                    case 0x1C:
                        {
                            if (line == 5) // a,x
                                {
                                    // LDY a,x
                                    cpu.rX
                                        = cpu.memory[cpu.memory[cpu.rPC]
                                                     + (cpu.memory[++cpu.rPC]
                                                        << 8)
                                                     + cpu.rX];
                                    break;
                                }
                            cpu.rPC++;
                            return;
                        }
                    }
                switch (line)
                    {
                    case 1:
                        cpu.flags = (cpu.rA & *buffer) & 0b11000000
                                    | (cpu.flags & ~0b11000000);
                        return;
                    case 4:
                        *buffer = cpu.rY;
                        return;
                    case 5:
                        cpu.rY = *buffer;
                        return;
                    case 6:{
                        short temp = cpu.rY - *buffer;
                        cpu.cleanFlags ();
                        if (temp > 0)
                            cpu.enableFlag (CARRY_FLAG);
                        else if (temp == 0)
                            cpu.enableFlag (ZERO_FLAG);
                        else
                            cpu.enableFlag (NEGATIVE_FLAG);
                        goto skip_flags;
                        return;}
                    case 7:{
                        short temp = cpu.rX - *buffer;
                        cpu.cleanFlags ();
                        if (temp > 0)
                            cpu.enableFlag (CARRY_FLAG);
                        else if (temp == 0)
                            cpu.enableFlag (ZERO_FLAG);
                        else
                            cpu.enableFlag (NEGATIVE_FLAG);
                        goto skip_flags;
                        return;}
                    }
            }
        case 1:
            {
                switch (test)
                    {
                    case 0x1:
                        { //(d,x) 1 byte
                            buffer = &cpu.memory[cpu.memory[cpu.rPC] + cpu.rX];
                            break;
                        }
                    case 0x5:
                        { // d zero page 1 byte
                            buffer = &cpu.memory[cpu.rPC];

                            break;
                        }
                    case 0x9: // #i imediato1 byte
                        if (opcode_ == 0x89)
                            return;
                        buffer = &cpu.memory[cpu.rPC];
                        break;
                    case 0xD: // a absoluto 2byte little endian
                        buffer = &cpu.memory[cpu.memory[cpu.rPC]
                                             + (cpu.memory[++cpu.rPC] << 8)];

                        break;
                    case 0x11: //(d),y zero page 1 byte
                        *buffer = cpu.memory[cpu.memory[cpu.rPC]] + cpu.rY;
                        break;
                    case 0x15: // d,x
                        buffer = &cpu.memory[cpu.memory[cpu.rPC] + cpu.rX];
                        break;
                    case 0x19: // a,y
                        buffer = &cpu.memory[cpu.memory[cpu.rPC]
                                             + (cpu.memory[++cpu.rPC] << 8)
                                             + cpu.rY];
                        break;
                    case 0x1D: // a,x
                        buffer = &cpu.memory[cpu.memory[cpu.rPC]
                                             + (cpu.memory[++cpu.rPC] << 8)
                                             + cpu.rX];
                        break;
                    }
                switch (line)
                    {
                    case 0:
                        {
                            cpu.rA = cpu.rA | *buffer;
                            break;
                        }
                    case 1:
                        { // AND
                            cpu.rA = cpu.rA & *buffer;
                            break;
                        }
                    case 2:
                        { // EOR
                            cpu.rA = cpu.rA ^ *buffer;
                            break;
                        }
                    case 3:
                        {
                            short temp
                                = cpu.rA + *buffer + cpu.getFlag (CARRY_FLAG);
                            break;
                        }
                    case 4:
                        {                        // STA
                            if (opcode_ == 0x89) // STA on #i
                                break;
                            cpu.memory[*buffer] = cpu.rA;
                            break;
                        }
                    case 5: // LDA
                        cpu.rA = *buffer;
                        break;
                    case 6:
                        { // CMP, SET CARRY FLAG
                            short temp = cpu.rA - *buffer;
                            cpu.cleanFlags ();
                            if (temp > 0)
                                cpu.enableFlag (CARRY_FLAG);
                            else if (temp == 0)
                                cpu.enableFlag (ZERO_FLAG);
                            else
                                cpu.enableFlag (NEGATIVE_FLAG);
                            goto skip_flags;
                            break;
                        }
                    case 7: // SBC
                        break;
                    }
            set_flags:
            // set zero and negative
            skip_flags:
                /* green */
                return;
            }
        case 2:
            {

                // lines { 0,1,2,3,6} são iguais  over the logic that the third
                // collumn is opered on x// 4 ,5e 7 são diferentes toda
                // operação sobre o azul que existe na 0x0a é o paralelo das do
                // lado só que para o x
                switch (test)
                    {
                    case 0x2:
                        if (line < 4)
                            {
                                cpu.rPC--; // all no arguments intructions need
                                           // to decrement rPC
                                return;
                            }
                        if (line == 5) // LDX #i
                            {
                                cpu.rX = cpu.memory[cpu.rPC];
                                return;
                            }
                        return;
                        break;
                    case 0x6: // d
                        buffer = &cpu.memory[cpu.memory[cpu.rPC]];
                        break;
                    case 0xa:
                        cpu.rPC--; // all no arguments intructions need to
                                   // decrement rPC
                        if (opcode_ == 0xFA)
                            return;
                        buffer = &cpu.rA;
                        break;
                    case 0xe:
                        {
                            buffer
                                = &cpu.memory[cpu.memory[cpu.rPC]
                                              + (cpu.memory[++cpu.rPC] << 8)];
                            break;
                        }
                    case 0x12:
                        cpu.rPC--; // all no arguments intructions need to
                                   // decrement rPC
                        return;
                    case 0x16:
                        { // d,x or d,y
                            char b = 0;
                            if (line == 4 || line == 5)
                                b = cpu.rY;
                            else
                                b = cpu.rX;
                            buffer = &cpu.memory[cpu.memory[cpu.rPC] + b];
                            break;
                        }
                    case 0x1A:
                        {
                            cpu.rPC--; // all no arguments intructions need to
                                       // decrement rPC
                            if (line != 4 && line != 5)
                                return;
                            buffer = &cpu.rSP;
                            break;
                        }
                    case 0x1E:
                        {
                            if (line == 4)
                                {
                                    cpu.rPC++;
                                    return;
                                }
                            if (line == 5) // a,y
                                {
                                    buffer
                                        = &cpu.memory[cpu.memory[cpu.rPC]
                                                      + (cpu.memory[++cpu.rPC]
                                                         << 8)
                                                      + cpu.rY];
                                    break;
                                }
                            // a,x
                            buffer = &cpu.memory[cpu.memory[cpu.rPC]
                                                 + (cpu.memory[++cpu.rPC] << 8)
                                                 + cpu.rX];
                            break;
                        }
                    }
                switch (line)
                    {
                    case 0:
                        {
                            // unsigned char *
                            *buffer = *buffer << 1;
                            break;
                        }
                    case 1:
                        {
                            unsigned char temp = *buffer;
                            cpu.setFlag (CARRY_FLAG, temp & 0b10000000);
                            temp = temp << 1;
                            *buffer = temp | cpu.getFlag (CARRY_FLAG);
                        }

                        break;
                    case 2:
                        {
                            *buffer = *buffer >> 1;
                            break;
                        }
                    case 3:
                        {
                            unsigned char temp = *buffer;
                            cpu.setFlag (CARRY_FLAG, temp & 1);
                            temp = temp >> 1;
                            *buffer = temp | cpu.getFlag (CARRY_FLAG) << 7;
                            break;
                        }
                    case 4:
                        {
                            *buffer = (unsigned short)cpu.rX;
                            break;
                        }
                    case 5:
                        {
                            cpu.rX = (unsigned char)*buffer;
                            break;
                        }
                    case 6:
                        {
                            *buffer -= 1;
                            break;
                        }
                    case 7:
                        {
                            *buffer += 1;
                            break;
                        }
                    }
                return;
            }
        default:
            {
                // gray
                return;
                break;
            }
        }

    printf ("Ox%x ", *buffer);
}

unsigned char &
addressBus (unsigned short index_)
{
    int addressBusIn = index_;
    if (addressBusIn & 0x8000)
        { // adressBus >= 0x8000
            // mapper
            return fileBuffer[16 + mapper * 0x4000 + addressBusIn - 0x8000];
        }
    else if (addressBusIn & 0x6000)
        {
            // card ram
            sendError ("CANNOT ACESS");
            exit (1);
            return fileBuffer[0];
        }
    else if (addressBusIn & 0x4000)
        {
            // will not be coded now
            sendError ("CANNOT ACESS");
            exit (1);
            return fileBuffer[0];
        }
    else if (addressBusIn & 0x2000)
        {
            if (addressBusIn >= 0x2008)
                {
                    addressBusIn = (addressBusIn - 0x2008) % 8 + 2000;
                    // Mirrors of $2000–$2007 (repeats every 8 bytes)  PPU
                    // Register
                }
            //  PPU Register
            sendError ("CANNOT ACESS");
            exit (1);
            return fileBuffer[0];
        }
    else if (addressBusIn & 0x0800 || addressBusIn & 0x1000)
        {
            //  RAM Mirrors
            addressBusIn = (addressBusIn - 0x0800) % 0x0800;
        }
    //  RAM

    return cpu.RAM[addressBusIn];
}
int
main (int argc, char const *argv[])
{
    if (argc < 2)
        {
            sendError ("NOT ENOUGH ARGUMENTS");
            exit (1);
        }
    int fileLenght = 0;
    fileBuffer = readFile (argv[1], &fileLenght);
    if (fileBuffer[0] != sing[0] || fileBuffer[1] != sing[1]
        || fileBuffer[2] != sing[2] || fileBuffer[3] != sing[3])
        {
            sendError ("WRONG FILE TYPE");
            exit (1);
        }
    prgRomDataLenght = 16384 * fileBuffer[4];
    chrRomDataLenght = 8192 * fileBuffer[5];
    if (fileBuffer[6] & 0b100)
        {
            sendError ("Cannot manage traine");
            exit (1);
        }
    // 16  <-> 16 + prgRomDataLenght -1
    // unsigned short a = cpu.memory[++cpu.rPC];
    // unsigned short b = cpu.memory[++cpu.rPC];
    cpu.memory[0x80] = 0x50;
    cpu.memory[0x81] = 0x60;
    cpu.memory[0x82] = 0x70;

    cpu.memory[0x1234] = (unsigned char)0x1234;
    cpu.memory[0x1235] = (unsigned char)0x1235;

    cpu.rPC = 0x8000;
    cpu.rX = 1;
    cpu.rY = 2;
    cpu.rA = 15;
    printf ("pina\n");
    for (int i = 0; i < 1000; i++)
        {

            opcode ();

            cpu.rPC++;
        }
    return 0;
}
