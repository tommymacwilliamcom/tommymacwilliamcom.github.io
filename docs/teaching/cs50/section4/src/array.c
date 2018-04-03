#include <stdio.h>

int main(int argc, char** argv) {
    int a[4] = { 2, 4, 6, 8 };

    printf("Address of the array: 0x%d\n", a);
    printf("Address of the first element of the array: 0x%x\n", &a[0]);

    printf("Value of a[0]: %d\n", a[0]);
    printf("Value of *(a + 1): %d\n", *(a + 1));
}
