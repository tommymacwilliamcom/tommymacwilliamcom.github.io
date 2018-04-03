#include <stdio.h>

int calculate_even(int);

int main(int argc, char* argv[])
{
    for (int i = 0; i < 10; i++)
        printf("%d\n", calculate_even(i));
}

/**
 * Function: calculate_even
 * Calculate the nth even number
 *
 * Parameters:
 *   n - what number to calculate
 * 
 * Returns:
 *   nth even number
 *
 */
int calculate_even(int n)
{
    return 2 * n;
}
