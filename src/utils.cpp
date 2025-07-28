#include <stdio.h>
#include <stdlib.h>

void
sendError (const char *error)
{
    fprintf (stderr, "\n\n\033[31m ERROR:%s \033[0m\n\n", error);
}

unsigned  char *
readFile (const char *filePath,   int *fileLenght)
{
    FILE *file = fopen (filePath, "rb");
    if (file == NULL)
        {
            char c[100];
            sprintf (c, "cannot open file :%s", filePath);
            sendError (c);
            exit (1);
        }
    fseek (file, 0L, SEEK_END);
      int sz = ftell (file) + 1;
    fseek (file, 0L, SEEK_SET);
      unsigned char *buffer = ( unsigned char *)malloc (sz * sizeof (char));
    buffer[sz - 1] = 0;
    fread (buffer, sizeof (char), sz, file);
    fclose (file);
    if (fileLenght != nullptr)
        *fileLenght = sz;
    return buffer;
}