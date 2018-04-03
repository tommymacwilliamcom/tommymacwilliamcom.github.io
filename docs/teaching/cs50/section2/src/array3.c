#include <stdio.h>

int main(int argc, char* argv[]) {
    // two-dimensional array, now we're kickin'
    char letters[2][5] = {{ 'm', 'a', 'l', 'a', 'n' },
                          { 't', 'o', 'm', 'm', 'y' }};

    // printing... IN 2D
    printf("%c\n", letters[1][3]);

    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            printf("%c\n", letters[i][j]);
        }
    }
}
