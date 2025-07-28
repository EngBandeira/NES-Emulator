#pragma once
#include <stdlib.h>

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

char sing[4] = { 0x4E, 0x45, 0x53, 0x1A };

unsigned char &addressBus (unsigned short index_);
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
    unsigned char &operator[] (size_t i);
};
struct _CPU
{
    unsigned char *fileBuffer;
    int prgRomDataLenght,
        chrRomDataLenght; // program rom read only, machine coed
    ;                     // character rom  not necessary

    char mapper = 0;
    unsigned char RAM[0x800];
    unsigned char rA, rX, rY, rSP, flags;
    unsigned short rPC;
    _MEMORY memory;
    _CPU ()
    {
        prgRomDataLenght = 16384 * fileBuffer[4];
        chrRomDataLenght = 8192 * fileBuffer[5];
    }
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
    void runOpcode ();
    unsigned char &
addressBus (unsigned short index_);

};