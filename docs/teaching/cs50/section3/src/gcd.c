#include <stdio.h>

int gcd(int x, int y);

int main(int argc, char** argv) {
    printf("%d\n", gcd(63, 45));
}

int gcd(int x, int y) {
    if (y == 0)
        return x;
    return gcd(y, x % y);
}
