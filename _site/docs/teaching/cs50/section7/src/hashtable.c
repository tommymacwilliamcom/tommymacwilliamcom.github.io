/**
 * File: hashtable.c
 * Author: Tommy MacWilliam <tmacwilliam@cs50.net>
 * Creates a collision-inducing hashtable and inserts a few nodes
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// size of hashtable
#define HASHTABLE_SIZE 5

int hash(char*);

int main(int argc, char** argv) {
    int hashtable[HASHTABLE_SIZE];
    hashtable[hash("hello")] = 5;
    hashtable[hash("tommy")] = 10;

    printf("%d\n", hashtable[hash("hello")]);
    printf("%d\n", hashtable[hash("tommy")]);
}

/**
 * Function: hash
 * Calculate a numberical hash for a string key
 * Parameters:
 *   key - String to calculate hash for 
 * Returns:
 *   Integer hash in 0 <= n <= HASHTABLE_SIZE
 */
int hash(char* key) {
    int length = strlen(key);
    int hash = 0;
    for (int i = 0; i < length; i++) 
        hash += key[i];

    return hash % HASHTABLE_SIZE;
}
