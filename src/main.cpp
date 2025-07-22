#include <stdio.h>
#include <stdlib.h>

#include "utils.hpp"
char sing [4] = {0x7f ,0x45, 0x4c ,0x46};
unsigned int prgRomDataLenght;
unsigned int chrRomDataLenght;


int
main(int argc, char const *argv[])
{
  if(argc < 2){
    sendError("NOT ENOUGH ARGUMENTS");
    exit(1);
  }
  unsigned int fileLenght = 0;
  char *fileBuffer = readFile(argv[1],&fileLenght);
  if(fileBuffer[0] != sing[0] ||fileBuffer[1] != sing[1] ||fileBuffer[2] != sing[2] ||fileBuffer[3] != sing[3]){
    sendError("WRONG FILE TYPE");
    exit(1);
  }
  prgRomDataLenght = 16384 * fileBuffer[4];
  chrRomDataLenght = 8192 * fileBuffer[5];
  if(fileBuffer[6] & 0b100){
     sendError("Cannot manage traine");
    exit(1);
  }
  // 16  <-> 16 + prgRomDataLenght -1
  unsigned int index = 16;

  // printf("%x %d\n",fileBuffer, fileLenght);
}