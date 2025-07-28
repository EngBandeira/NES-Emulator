
#include <stdio.h>
#include <stdlib.h>

void
sendError (const char *error)
{
    fprintf (stderr, "ERROR:%s", error);
}
unsigned char fileBuffer[5] = {'a','b','c','d','e'};
    unsigned char RAM[0x800];

int mapper = 0;
unsigned char &
addressBus (unsigned short index_)
{
    int addressBusIn = index_;
    if (addressBusIn & 0x8000)
        { // adressBus >= 0x8000
            // mapper
            int a = 1;
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
    else if (addressBusIn & 0x0800)
        {
            //  RAM Mirrors
            addressBusIn = (addressBusIn - 0x0800) % 0x0800;
        }
    //  RAM

    return RAM[addressBusIn];
}

#include <stdlib.h>
#include <stdio.h>
enum FLAG {
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
    unsigned char rA, rX, rY, rP, rS,flags;
    unsigned short rPC;
    _MEMORY memory;
    void enableFlag(FLAG flag){
        setFlag(flag,1);
    }
    void disableFlag(FLAG flag){
        setFlag(flag,0);
    }
    void setFlag(FLAG flag,bool b){
        if(b){
            flags = flags | (1<<flag);
            return;
        }else {
            flags = flags & ~(1<<flag);
            return;
        }
    }
    bool getFlag(FLAG flag){
        return (flags & (1<<flag))>>flag;
    }
};

static _CPU cpu;

int main(int argc, char const *argv[])
{
    int a = 5;
    int &b = a;
    int *c = &b;
    printf("%d",*c);

    *c = 3;
    printf("%d",a);
//   cpu.enableFlag(OVERFLOW_FLAG);
//   printf("%d %d\n",cpu.getFlag(OVERFLOW_FLAG),cpu.flags);
//   cpu.disableFlag(OVERFLOW_FLAG);
//   printf("%d %d\n",cpu.getFlag(OVERFLOW_FLAG),cpu.flags);
    // printf("%d" ,1<<2);
  return 0;
}



// pixel = Pixel color (9-bit) given as input. Bitmask format: "eeellcccc".
// phase = Signal phase (0..11). It is a variable that increases by 8 each pixel.
float NTSCsignal(int pixel, int phase)
{
    // Terminated voltage levels
    static const float levels[16] = {
        0.228f, 0.312f, 0.552f, 0.880f, // Signal low
        0.616f, 0.840f, 1.100f, 1.100f, // Signal high
        0.192f, 0.256f, 0.448f, 0.712f, // Signal low, attenuated
        0.500f, 0.676f, 0.896f, 0.896f  // Signal high, attenuated
    };

    // Decode the NES color.
    int color =    (pixel & 0b000001111);      // 0..15 "cccc"
    int level =    (pixel & 0b000110000) >> 4; // 0..3  "ll"
    int emphasis = (pixel & 0b111000000) >> 6; // 0..7  "eee"
    if(color > 13) { level = 1;  } // For colors 14..15, level 1 is forced.

    auto InColorPhase = [=](int color) { return (color + phase) % 12 < 6; }; // Inline function
    // When de-emphasis bits are set, some parts of the signal are attenuated:
    // colors 14 .. 15 are not affected by de-emphasis
    int attenuation = (
       (((emphasis & 1) && InColorPhase(0xC))
    ||  ((emphasis & 2) && InColorPhase(0x4))
    ||  ((emphasis & 4) && InColorPhase(0x8))) && (color < 0xE)) ? 8 : 0;

    // The square wave for this color alternates between these two voltages:
    float low  = levels[0 + level + attenuation];
    float high = levels[4 + level + attenuation];
    if(color == 0) { low = high; } // For color 0, only high level is emitted
    if(color > 12) { high = low; } // For colors 13..15, only low level is emitted

    // Generate the square wave
    float signal = InColorPhase(color) ? high : low;

    return signal;
}

void RenderNTSCpixel(unsigned x, int pixel, int PPU_cycle_counter)
{
    int phase = PPU_cycle_counter * 8;
    for(int p=0; p<8; ++p) // Each pixel produces distinct 8 samples of NTSC signal.
    {
        float signal = NTSCsignal(pixel, phase + p); // Calculated as above

        // Optionally apply some lowpass-filtering to the signal here.
        // This emulates the differential phase distortion due to varying DAC impedance.

        // Normalize the signal to 0..1 range.
        // Since the signal will accumulate by 12 samples, we may put the division by 12 here too.

        static const float black=0.312f, white=1.100f;
        signal = (signal-black) / (white-black);

        // Save the signal for this pixel.
        signal_levels[ x*8 + p ] = signal;
    }
}
