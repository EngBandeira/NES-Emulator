#include "utils.hpp"
#include "cpu.hpp"
#include <stdio.h>
static _CPU cpu;
int
main (int argc, char const *argv[])
{

    if (argc < 2)
        {
            sendError ("NOT ENOUGH ARGUMENTS");
            exit (1);
        }
    int fileLenght = 0;
    unsigned char *fileBuffer = readFile (argv[1], &fileLenght);
    if (fileBuffer[0] != sing[0] || fileBuffer[1] != sing[1]
        || fileBuffer[2] != sing[2] || fileBuffer[3] != sing[3])
        {
            sendError ("WRONG FILE TYPE");
            exit (1);
        }
    
    if (fileBuffer[6] & 0b100)
        {
            sendError ("Cannot manage traine");
            exit (1);
        }
    // 16  <-> 16 + prgRomDataLenght -1
    // unsigned short a = memory[++rPC];
    // unsigned short b = memory[++rPC];
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
            cpu.runOpcode ();
            cpu.rPC++;
        }
    return 0;
}
