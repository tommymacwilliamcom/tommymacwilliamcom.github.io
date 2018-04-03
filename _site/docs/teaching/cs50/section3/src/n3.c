/**
 * What's the efficiency?
 * 
 * Tommy MacWilliam, 2010
 * 
 */

#include <stdio.h>
#include <string.h>
#include <cs50.h>

int main(int argc, char** argv) {
    string input = GetString();
    printf("%d\n", strlen(input));
    return 0;
}
