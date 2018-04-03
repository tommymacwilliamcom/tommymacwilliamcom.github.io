/**
 * File: sum.c
 * Author: Tommy MacWilliam <tmacwilliam@cs50.net>
 * Prints out a binary tree in ascending order
 *
 */

#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    int value;
    struct node* left;
    struct node* right;
} node;

node* create_node(int value);
void insert(int value, node* root);
int search(int value, node* root);
void print(node* root);

int main(int argc, char** argv) {
    // create root node and insert some nodes
    node* root = create_node(5);
    insert(1, root);
    insert(8, root);
    
    // print out binary tree
    print(root);

    // we're done, right?
    return 0;
}

/**
 * Function: create_node
 * Create a new node with the given value
 * Parameters: 
 *   value - Value of new node
 * Returns:
 *   Pointer to newly created node
 *
 */
node* create_node(int value) {
    node* new = malloc(sizeof(node));
    new->value = value;
    new->left = NULL;
    new->right = NULL;
    return new;
}

/**
 * Function: insert
 * Insert a new node into the binary tree
 * Parameters:
 *   value - Value to insert into tree
 *   root - Root node of tree
 *
 */
void insert(int value, node* root) {
    // don't allow duplicates
    if (value == root->value)
        return;
    else if (value < root->value) {
        // recurse into left subtree
        if (root->left != NULL)
            insert(value, root->left);
        // no more children, so insert new node as left child
        else 
            root->left = create_node(value);
    }
    else if (value > root->value) {
        // recurse into right subtree
        if (root->right != NULL)
            insert(value, root->right);
        // no more children, so insert new node as right child        
        else
            root->right = create_node(value);
    }
}

/**
 * Function: search
 * Search the tree for a given value
 * Parameters: 
 *   value - Value to search for
 *   root - Root node of tree
 * Returns:
 *    1 if value found, else 0
 *
 */
int search(int value, node* root) {
    // no more children, so value not found in tree
    if (root == NULL)
        return 0;   
    else if (value == root->value)
        return 1;
    // value is smaller, so traverse into left subtree
    else if (value < root->value)
        return search(value, root->left);
    // value is larger, so traverse into right subtree
    else
        return search(value, root->right);
}

/**
 * Function: print
 * Print out the values of a binary tree in ascending order
 * Parameters: 
 *   root - Root of binary tree to print
 *
 */
void print(node* root) {
    if (root == NULL)
        return;

    print(root->left);
    printf("%d\n", root->value);
    print(root->right);
}
