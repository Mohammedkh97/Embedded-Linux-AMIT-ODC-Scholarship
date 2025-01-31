#include "stdio.h"

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        printf("Error! Please provide your name.\n");
        return 1; // Return an error code
    }

    printf("Welcome %s to Embedded Linux!\n", argv[1]);

    return 0;
}
