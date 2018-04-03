#include <stdio.h>

int main(int argc, char** argv) {
    printf("%d\n", factorial(5));
}

int factorial(int n) {
    if (n <= 1)
        return 1;
    return n * factorial(n - 1);
}
