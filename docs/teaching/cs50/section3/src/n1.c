/**
 * What's the efficiency?
 * 
 * Tommy MacWilliam, 2010
 * 
 */

#include <stdio.h>

int main(int argc, char** argv) {
    int a[5] = { 1, 2, 3, 4, 5 };
    for (int i = 0; i < 5; i++)
        if (a[i] == 3)
            printf("yay!\n");

    return 0;
}
