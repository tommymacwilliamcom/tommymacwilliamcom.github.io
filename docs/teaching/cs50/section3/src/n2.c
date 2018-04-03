/**
 * What's the efficiency?
 * 
 * Tommy MacWilliam, 2010
 * 
 */

#include <stdio.h>

int main(int argc, char** argv) {
    int a[5] = { 1, 2, 3, 4, 5 };
    int result = 0; 

    for (int i = 0; i < 5; i++)
        for (int j = 0; j < 5; j++)
            result += a[i];
    
    printf("%d\n", result);
    return 0;
}
