/**
 * File: helpmevalgrind.c
 * Author: Tommy MacWilliam <tmacwilliam@cs50.net>
 * Contains memory leaks, oh no!
 *
 */

#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    int value;
    struct node* next;
} node;

int main(int argc, char** argv) {
    // create linked list nodes
    node* root = malloc(sizeof(node));
    node* n1 = malloc(sizeof(node));
    n1->value = 1;
    node* n2 = malloc(sizeof(node));
    n2->value = 2;
    node* n3 = malloc(sizeof(node));
    n3->value = 3;
    
    // link nodes to each other
    root->next = n1;
    n1->next = n2;
    n2->next = n3;
    n3->next = NULL;

    // make sure we don't have a memory leak!
    free(root);
}
