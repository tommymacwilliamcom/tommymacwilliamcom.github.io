#include <stdio.h>

int main(int argc, char** argv) {
    int x = 5;
    int* y = &x;

    printf("x is stored at memory location: 0x%x\n", y);
}
