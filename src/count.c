#include <stdio.h>
#include "library.h"

int main(int argc, char *argv[]) {
    printf("Hello, world!\n");
    printf("The result is %i.\n", library_func());
    return 0;
}
