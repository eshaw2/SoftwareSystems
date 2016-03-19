/* Example code for Software Systems at Olin College.

Copyright 2014 Allen Downey
License: Creative Commons Attribution-ShareAlike 3.0

*/

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>


void free_anything(int *p) {
    free(p);
}

int read_element(int *array, int index) {
    int x = array[index];
    return x;
}


int main ()
{
    int never_allocated;
    int *free_twice = malloc (sizeof (int));
    int *use_after_free = malloc (sizeof (int));
    int *never_free = malloc (sizeof (int));
    int array1[100];
    int *array2 = malloc (100 * sizeof (int));

    // valgrind does not bounds-check static arrays
    read_element(array1, -1); 
    read_element(array1, 100);

    // but it does bounds-check dynamic arrays
    // read_element(array2, -1); // Invalid read of size 4 "<address> is 4 bytes before a block of size 400 alloc'd"
    // read_element(array2, 100); // Invalid read of size 4 "<address> is 0 bytes after a block of size 400 alloc'd"
    free(array2); // "400 bytes in 1 blocks are definitely lost in loss record 2 of 2"

    // and it catches use after free
    free(use_after_free);
    *use_after_free = 17; // Invalid write of size 4 "<address> is 0 bytes inside a block of size 4 free'd"
    
    // never_free is definitely lost
    *never_free = 17; 
    free(never_free); //"4 bytes in 1 blocks are definitely lost in loss record 1 of 2"
    


    // the following line would generate a warning
    // free(&never_allocated); 
    

    // but this one doesn't
    // free_anything(&never_allocated); // Invalid free/delete/realloc "<address> is on thread 1's stack in frame #2, created by main (???)"
    
    
    free(free_twice);
    // free(free_twice); // Invalid free/delete/realloc "<address> is 0 bytes inside block of size 4 free'd"
    

    return 0;
}
 
