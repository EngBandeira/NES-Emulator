#include <stdio.h>
#include <stdlib.h>

#include "utils.hpp"
char sing [4] = {0x7f ,0x45, 0x4c ,0x46};
int
main (int argv,const char **args)
{
  if(argv < 2){
    sendError("NOT ENOUGH ARGUMENTS");
    exit(1);
  }
  unsigned int fileLenght = 0;
  char *fileBuffer = readFile(args[1],&fileLenght);
  if(fileBuffer[0] != sing[0] ||fileBuffer[0] != sing[0] ||fileBuffer[0] != sing[0] ||fileBuffer[0] != sing[0]){
    sendError("WRONG FILE TYPE");
    exit(1);
  }
  printf("\n");
  // printf("%x %d\n",fileBuffer, fileLenght);
}