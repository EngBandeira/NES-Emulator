#include <stdio.h>
#include <stdlib.h>

#include "cpu.hpp"
#include "utils.hpp"

unsigned char &
_MEMORY::operator[] (size_t i)
{
    return addressBus ((unsigned short)i);
}

void
_CPU::runOpcode ()
{
    unsigned char temp_b;
    unsigned char opcode_ = memory[rPC];
    unsigned char *buffer = &temp_b; // is the id of the memo
    char table = opcode_ & 0b11;
    unsigned char line = (opcode_ >> 4) / 2; // FIRST LINE IS 0
    char test = opcode_ & 0b11111;           // 1F
    rPC++;
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

                                    memory[0x100 + rSP] = rPC + 1;
                                    rSP--;
                                    memory[0x100 + rSP] = flags;
                                    rSP--;
                                    enableFlag (INTERRUPT_DISABLE_FLAG);
                                    enableFlag (B_FLAG);
                                    return;
                                }
                            case 1:
                                { // JSR
                                    memory[0x100 + rSP] = rPC + 1;
                                    rSP--;
                                    rPC = memory[rPC] + (memory[++rPC] << 8);
                                    return;
                                }
                            case 2:
                                {          // RTI
                                    rPC--; // all no arguments intructions
                                           // need to
                                    // decrement rPC
                                    rSP++;
                                    flags = memory[0x100 + rSP];
                                    rSP++;
                                    rPC = memory[0x100 + rSP];
                                    disableFlag (B_FLAG);
                                    return;
                                }
                            case 3:
                                {          // RTS
                                    rPC--; // all no arguments intructions
                                           // need to decrement rPC
                                    rSP++;
                                    rPC = memory[0x100 + rSP] + 1;
                                    return;
                                }
                            case 4:
                                return;
                            case 5:
                            case 6:
                            case 7:
                                buffer = &memory[rPC];
                                break;
                            }
                        break;
                    case 0x4:
                        {
                            switch (line)
                                {
                                case 0x1: // BIT
                                    buffer = &memory[memory[rPC]];
                                    return;
                                case 0x0:
                                case 0x2:
                                case 0x3:
                                    return;
                                default:
                                    buffer = &memory[memory[rPC]];
                                    break;
                                }
                            break;
                        }

                    case 0x8:
                        {
                            rPC--; // all no arguments intructions need to
                                   // decrement rPC
                            switch (line)
                                {
                                case 0:
                                    memory[0x100 + rSP] = flags;
                                    rSP--;
                                    return;
                                case 1:
                                    rSP++;
                                    flags = memory[0x100 + rSP];
                                    return;
                                case 2:
                                    memory[0x100 + rSP] = rA;
                                    rSP--;
                                    return;
                                case 3:
                                    rSP++;
                                    rA = memory[0x100 + rSP];
                                    return;
                                case 4:
                                    rY--;
                                    return;
                                case 5:
                                    buffer = &rA;
                                    break;
                                case 6:
                                    rY++;

                                    return;
                                case 7:
                                    rX++;
                                    return;
                                }
                            break;
                        }
                    case 0xc:
                        {
                            switch (line)
                                {
                                case 0:
                                    rPC++; // absolute NOP
                                    return;
                                case 2:
                                    rPC = memory[rPC] + (memory[++rPC] << 8);
                                    return;
                                case 3:
                                    rPC = memory[memory[rPC]
                                                 + (memory[++rPC] << 8)];
                                    return;

                                default:
                                    buffer = &memory[memory[rPC]
                                                     + (memory[++rPC] << 8)];
                                    break;
                                }
                        }
                    case 0x10:
                        for (unsigned char a = 0; a < 8; a++)
                            {

                                if (branchFlagsConditionsInvert[a]
                                        && ~(branchFlagsConditions[a] & flags)
                                    || ~branchFlagsConditionsInvert[a]
                                           && (branchFlagsConditions[a]
                                               & flags))
                                    {
                                        rPC = 1 + (signed char)memory[rPC];
                                        return;
                                    }
                            }
                        return;
                    case 0x14:
                        {
                            if (line == 4 || line == 5) // d,x
                                {
                                    buffer = &memory[memory[rPC] + rX];
                                    break;
                                }
                            return;
                        }
                    case 0x18:
                        {
                            switch (line)
                                {
                                case 0:
                                    disableFlag (CARRY_FLAG);
                                    return;
                                case 1:
                                    enableFlag (CARRY_FLAG);
                                    return;
                                case 2:
                                    disableFlag (INTERRUPT_DISABLE_FLAG);
                                    return;
                                case 3:
                                    enableFlag (INTERRUPT_DISABLE_FLAG);
                                    return;
                                case 4:
                                    buffer = &rA;
                                    break;
                                case 5:
                                    disableFlag (OVERFLOW_FLAG);
                                    return;
                                case 6:
                                    disableFlag (DECIMAL_FLAG);
                                    return;
                                case 7:
                                    enableFlag (DECIMAL_FLAG);
                                    return;
                                }
                            break;
                        }
                    case 0x1C:
                        {
                            if (line == 5) // a,x
                                {
                                    // LDY a,x
                                    rX = memory[memory[rPC]
                                                + (memory[++rPC] << 8) + rX];
                                    break;
                                }
                            rPC++;
                            return;
                        }
                    }
                switch (line)
                    {
                    case 1:
                        flags = (rA & *buffer) & 0b11000000
                                | (flags & ~0b11000000);
                        return;
                    case 4:
                        *buffer = rY;
                        return;
                    case 5:
                        rY = *buffer;
                        return;
                    case 6:
                        {
                            short temp = rY - *buffer;
                            cleanFlags ();
                            if (temp > 0)
                                enableFlag (CARRY_FLAG);
                            else if (temp == 0)
                                enableFlag (ZERO_FLAG);
                            else
                                enableFlag (NEGATIVE_FLAG);
                            goto skip_flags;
                            return;
                        }
                    case 7:
                        {
                            short temp = rX - *buffer;
                            cleanFlags ();
                            if (temp > 0)
                                enableFlag (CARRY_FLAG);
                            else if (temp == 0)
                                enableFlag (ZERO_FLAG);
                            else
                                enableFlag (NEGATIVE_FLAG);
                            goto skip_flags;
                            return;
                        }
                    }
            }
        case 1:
            {
                switch (test)
                    {
                    case 0x1:
                        { //(d,x) 1 byte
                            buffer = &memory[memory[rPC] + rX];
                            break;
                        }
                    case 0x5:
                        { // d zero page 1 byte
                            buffer = &memory[rPC];

                            break;
                        }
                    case 0x9: // #i imediato1 byte
                        if (opcode_ == 0x89)
                            return;
                        buffer = &memory[rPC];
                        break;
                    case 0xD: // a absoluto 2byte little endian
                        buffer = &memory[memory[rPC] + (memory[++rPC] << 8)];

                        break;
                    case 0x11: //(d),y zero page 1 byte
                        *buffer = memory[memory[rPC]] + rY;
                        break;
                    case 0x15: // d,x
                        buffer = &memory[memory[rPC] + rX];
                        break;
                    case 0x19: // a,y
                        buffer
                            = &memory[memory[rPC] + (memory[++rPC] << 8) + rY];
                        break;
                    case 0x1D: // a,x
                        buffer
                            = &memory[memory[rPC] + (memory[++rPC] << 8) + rX];
                        break;
                    }
                switch (line)
                    {
                    case 0:
                        {
                            rA = rA | *buffer;
                            break;
                        }
                    case 1:
                        { // AND
                            rA = rA & *buffer;
                            break;
                        }
                    case 2:
                        { // EOR
                            rA = rA ^ *buffer;
                            break;
                        }
                    case 3:
                        {
                            short temp
                                = rA + *buffer + getFlag (CARRY_FLAG);
                            break;
                        }
                    case 4:
                        {                        // STA
                            if (opcode_ == 0x89) // STA on #i
                                break;
                            memory[*buffer] = rA;
                            break;
                        }
                    case 5: // LDA
                        rA = *buffer;
                        break;
                    case 6:
                        { // CMP, SET CARRY FLAG
                            short temp = rA - *buffer;
                            cleanFlags ();
                            if (temp > 0)
                                enableFlag (CARRY_FLAG);
                            else if (temp == 0)
                                enableFlag (ZERO_FLAG);
                            else
                                enableFlag (NEGATIVE_FLAG);
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
                                rPC--; // all no arguments intructions need
                                       // to decrement rPC
                                return;
                            }
                        if (line == 5) // LDX #i
                            {
                                rX = memory[rPC];
                                return;
                            }
                        return;
                        break;
                    case 0x6: // d
                        buffer = &memory[memory[rPC]];
                        break;
                    case 0xa:
                        rPC--; // all no arguments intructions need to
                               // decrement rPC
                        if (opcode_ == 0xFA)
                            return;
                        buffer = &rA;
                        break;
                    case 0xe:
                        {
                            buffer
                                = &memory[memory[rPC] + (memory[++rPC] << 8)];
                            break;
                        }
                    case 0x12:
                        rPC--; // all no arguments intructions need to
                               // decrement rPC
                        return;
                    case 0x16:
                        { // d,x or d,y
                            char b = 0;
                            if (line == 4 || line == 5)
                                b = rY;
                            else
                                b = rX;
                            buffer = &memory[memory[rPC] + b];
                            break;
                        }
                    case 0x1A:
                        {
                            rPC--; // all no arguments intructions need to
                                   // decrement rPC
                            if (line != 4 && line != 5)
                                return;
                            buffer = &rSP;
                            break;
                        }
                    case 0x1E:
                        {
                            if (line == 4)
                                {
                                    rPC++;
                                    return;
                                }
                            if (line == 5) // a,y
                                {
                                    buffer
                                        = &memory[memory[rPC]
                                                  + (memory[++rPC] << 8) + rY];
                                    break;
                                }
                            // a,x
                            buffer = &memory[memory[rPC] + (memory[++rPC] << 8)
                                             + rX];
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
                            setFlag (CARRY_FLAG, temp & 0b10000000);
                            temp = temp << 1;
                            *buffer = temp | getFlag (CARRY_FLAG);
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
                            setFlag (CARRY_FLAG, temp & 1);
                            temp = temp >> 1;
                            *buffer = temp | getFlag (CARRY_FLAG) << 7;
                            break;
                        }
                    case 4:
                        {
                            *buffer = (unsigned short)rX;
                            break;
                        }
                    case 5:
                        {
                            rX = (unsigned char)*buffer;
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
_CPU::addressBus (unsigned short index_)
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

    return RAM[addressBusIn];
}
