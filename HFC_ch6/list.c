/* Example code for Software Systems at Olin College.

Based on an example from http://www.learn-c.org/en/Linked_lists

Copyright 2014 Allen Downey
License: Creative Commons Attribution-ShareAlike 3.0

*/

#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    int val;
    struct node * next;
} Node;

Node *make_node(int val, Node *next) {
    Node *node = malloc(sizeof(Node));
    node->val = val;
    node->next = next;
    return node;
}

void print_list(Node *head) {
    Node *current = head;

    while (current != NULL) {
        printf("%d\n", current->val);
        current = current->next;
    }
}

int pop(Node **head) {
    int retval;
    Node *next_node;

    if (*head == NULL) {
        return -1;
    }

    next_node = (*head)->next;
    retval = (*head)->val;
    free(*head);
    *head = next_node;

    return retval;
}

// Add a new element to the beginning of the list.
void push(Node **head, int val) {
    *head = make_node(val, *head);
}

// Remove the first element with the given value; return the number
// of nodes removed.
int remove_by_value(Node **head, int val) {

    //make sure node is not empty
    if (head == NULL) {
        return 0;
    }  
    // if the first element is the sought after element...
    if ((*head) -> val == val) {
        pop(head); // pop the element
        return 1 ;// show you found the element
    }
    // If neither case above is true, recursively search for the element
    // in the rest of the list
    Node *curr = *head;
    while (curr != NULL) {
        Node* next = curr->next;
        if ((next-> val) == val){
            Node* store = curr -> next;
            free(next);
            curr->next = store -> next;
        return 1;
        }
        curr = next;
    }

    return -1;
}

// Reverse the elements of the list without allocating new nodes.
void reverse(Node **head) {
    Node* prev_step;
    Node* next_step;
    Node* current_step;

    prev_step = NULL;
    current_step = *head;

    if (current_step == NULL || (current_step -> next) == NULL){
        return;
    }

    // Before hitting the last node in the list
    while ((current_step -> next) != NULL){
        // printf("current content: %i \n", current_step-> val);
        next_step = current_step -> next;
        // printf("next node's content: %i \n", next_step -> val);
        (current_step -> next) = prev_step;
        prev_step = current_step;
        // printf("current node's next now points to value: %i \n", current_step -> val);
        current_step = next_step;
    }

    // Handle the last node
    (current_step -> next) = prev_step;
    *head = current_step;

}


int main() {
    Node *test_list = make_node(1, NULL);
    test_list->next = make_node(2, NULL);
    test_list->next->next = make_node(3, NULL);
    test_list->next->next->next = make_node(4, NULL);

    // int retval = pop(&test_list);
    // push(&test_list, retval+10);

    // int a = remove_by_value(&test_list, 3);
    // remove_by_value(&test_list, 7);

    reverse(&test_list);

    print_list(test_list);
    
}
