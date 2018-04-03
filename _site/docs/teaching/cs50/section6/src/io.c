#include <stdio.h>

#define LENGTH 3

typedef struct quad {
    char first;
    char second;
    char last_two[2];
} quad;

int main(int argc, char *argv[])
{
    // open file
    FILE *fp = fopen("text.txt", "r");

    // iterate over characters in file
    for (int i = 0; i < LENGTH; i++) 
    {
        // create struct to fill with file data
        quad letters;

        // read data into struct
        fread(&letters, sizeof(quad), 1, fp);

        // print out first two chars of struct
        printf("%c", letters.first);
        printf("%c", letters.second);

        // last element of struct is an array, so iterate over that
        for (int j = 0; j < 2; j++)
        {
            // print out each element of the array
            printf("%c", letters.last_two[j]);
        }

        // separate 4-letter blocks with newlines
        printf("\n");
    }
}
