#include <stdio.h>

#define SIZE 5

int main(int argc, char** argv) {
    int a[] = { 1, 2, 3, 4, 5 };

    for (int i = 0; i < SIZE; i++) {
        printf("%d\n", *(a + i));
    }
}
