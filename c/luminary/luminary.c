#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
    if (argc < 3)
        return 128;

    printf("Processing %s => %s (RGB => grayscale)\n", argv[1], argv[2]);

    FILE *input = fopen(argv[1], "rb");
    FILE *output = fopen(argv[2], "wb");
    unsigned char color[4];
    unsigned char gray;

    while(fread(color, 1, 4, input) != 0) {
        gray = (color[0] + color[1] + color[2]) / 3;
        fputc(gray, output);
    }

    fclose(input);
    fclose(output);

    return 0;
}
