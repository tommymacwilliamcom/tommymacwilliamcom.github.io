/**
 * File: list.c
 * Author: Tommy MacWilliam <tmacwilliam@cs50.net>
 * Demonstrates insertion, removal, and iteration of a linked list
 *
 */

#include <stdio.h>
#include <stdlib.h>

// create a struct to represent each node in the list
typedef struct node {
    int value;
    struct node* next;
} node;

node* create_node(int);
void insert_head(node*, int);
void insert_tail(node*, int);
void print_list(node*);
void remove_first(node*, int);

int main(int argc, char** argv) {
    // create root node
    node *root = malloc(sizeof(node));
    root->next = NULL;

    // insert/remove some numbers into the list
    insert_tail(root, 1);
    insert_tail(root, 2);
    insert_tail(root, 2);
    insert_tail(root, 3);
    insert_tail(root, 4);
    insert_head(root, 0);
    remove_first(root, 2);

    print_list(root);
}

/**
 * Function: create_node
 * Creates a new node on the heap.
 * Parameters:
 *   value - Value of the new node.
 * Returns:
 *   Address of new node
 *
 */
node* create_node(int value) {
    node* new = malloc(sizeof(node));
    new->value = value;
    return new;
}

/**
 * Function: insert_head
 * Insert a new node at the head of the list
 * Parameters:
 *   root - Root node of the list
 *   value - Value of the node to insert
 *
 */
void insert_head(node* root, int value) {
    node* new = create_node(value);
    // new element now points to previously first element
    new->next = root->next;
    // root now points to first element
    root->next = new;
}

/**
 * Function: insert_tail
 * Insert a new node at the end of the list
 * Parameters:
 *   root - Root node of the list
 *   value - Value of the node to insert
 *
 */
void insert_tail(node* root, int value) {
    node* new = create_node(value);

    // iterate through list to get last element
    node* iterator = root;
    while (iterator->next != NULL)
        iterator = iterator->next;

    // make list element point to new element
    iterator->next = new;
}

/**
 * Function: print_list
 * Print out the value of each element in the list
 * Parameters:
 *   root - Root node of the list
 *
 */
void print_list(node* root) {
    // start iterator at second element (root has no value)
    node* iterator = root->next;
    // iterate through list, printing each node value
    while (iterator != NULL) {
        printf("%d\n", iterator->value);
        iterator = iterator->next;
    }
}

/**
 * Function: remove_first
 * Remove all occurrences of value from the list
 * Parameters:
 *   root - Root node of list
 *   value - Value to remove from list
 *
 */
void remove_first(node* root, int value) {
    // maintain two iterators: current element and previous element
    node* iterator = root;
    node* prev_iterator = NULL;

    // iterate through list, looking for value
    while (iterator != NULL) {
        // found value to remove
        if (iterator->value == value) {
            // make previous element point to next element
            prev_iterator->next = iterator->next;
            free(iterator);
            return;
        }
        
        // advance both iterators
        prev_iterator = iterator;
        iterator = iterator->next;
    }
}
