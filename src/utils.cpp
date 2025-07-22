#include <stdio.h>
#include <stdlib.h>

void
sendError (const char *error)
{
    fprintf (stderr, "ERROR:%s", error);
}

char *
readFile (const char *filePath, unsigned int *fileLenght)
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
    unsigned int sz = ftell (file) + 1;
    fseek (file, 0L, SEEK_SET);
    char *buffer = (char *)malloc (sz * sizeof (char));
    buffer[sz - 1] = 0;
    fread (buffer, sizeof (char), sz, file);
    fclose (file);
    if (fileLenght != nullptr)
        *fileLenght = sz;
    return buffer;
}