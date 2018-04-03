#include <stdio.h>

int calculate_fibonacci(int);

int main(int argc, char* argv[])
{
    printf("%d\n", calculate_fibonacci(5));
}

/**
 * Function: calculate_fibonacci
 * Calculate the nth fibonacci number (1-indexed)
 *
 * Parameters:
 *   n - What fibonacci number to calculate
 *
 * Return:
 *   nth fibonaci number
 *
 */
int calculate_fibonacci(int n) 
{
    // need to keep track of F_n, F_{n-1}, and F_{n-2}
    int value = 1;
    int prev_value = 1;
    int prev_prev_value = 1;

    // first 2 values are defined as 1
    if (n <= 2)
        return 1;

    // start counting at 3, since we already know first two values
    for (int i = 3; i <= n; i++)
    {
        // F_n = F_{n-1} + F_{n-2}
        value = prev_value + prev_prev_value;

        // move previous values forward based on new calculation
        prev_prev_value = prev_value;
        prev_value = value;
    }

    return value;
}
