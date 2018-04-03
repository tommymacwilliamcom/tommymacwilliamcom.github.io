/**
 * DISCLAIMER: THIS PROGRAM IS INTENTIONALLY CONFUSING AND IS BOTH
 * TERRIBLE DESIGN AND STYLE (THAT'S WHY WE NEED GDB). DO NOT TRY THIS AT HOME.
 * 
 * Tommy MacWilliam, 2010
 *
 */

#include <stdio.h>

int f(int x, int y);

int main(int argc, char** argv) {
    int n = 5;
    for (int i = 0; i < 3; i++)
        n += (i % 2);
    int y = f(n, 6);
    printf("%d\n", y);
}

int f(int x, int y) {
    if (y <= 0)
        return x;
    x *= 2;
    y--;
    return f(x, y);
}
