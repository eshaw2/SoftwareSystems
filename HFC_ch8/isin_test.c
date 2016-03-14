#include <stdio.h>
#include <glib.h>
#include <glib/gprintf.h>
#include <stdlib.h>
#include <string.h>

gboolean isin (gpointer key, gpointer value, gpointer user_data){
	// printf("%s\n", *);
	printf("user data is: %c\n", GPOINTER_TO_INT(user_data)); 
	// printf("\n");
	// printf("%s\n", GPOINTER_TO_CHAR(user_data));
	return strcmp(key, user_data);
	}

void printKeyValue( gpointer key, gpointer value, gpointer userData ) {
   char* realKey = (char*)key;
   void* realValue = (void*)value;

   printf( "%s => %p\n", realKey, realValue );
   return;
}

void main() {
	// printf("found? %d", strcmp("hi","i"));
	// printf("\n");
	// printf("found? %d", strcmp("hi","hi"));
	// printf("\n");

	char * x [] = { "ab", "bc", "cd" };
	gchar * y = "cd";
	gchar **ptr;

	GHashTable* hash = g_hash_table_new_full(g_str_hash, g_str_equal, free, free);

	for (ptr = x; *ptr; ptr++){
		// // if (g_hash_table_find(hash, (GHRFunc)isin , *ptr)){
		// // 	g_hash_table_lookup_extended(hash, *ptr, (gpointer*)key_ptr, (gpointer*)value_ptr);
		// // 	++*(value_ptr);
		
		// gpointer* ans1 = g_hash_table_find(hash, (GHRFunc)isin , y);
		
		gpointer* ans1 = g_hash_table_find(hash, (GHRFunc)isin , *ptr);
		printf("table found match at: %p\n", ans1);


		int* cntptr = g_malloc(sizeof(int*));
		g_hash_table_insert (hash, *ptr, cntptr);
		// // g_hash_table_find(hash, (GHRFunc)isin , &ptr);
		// gpointer* ans2 = g_hash_table_find(hash, (GHRFunc)isin , y);
		// printf("%p\n", ans2);	
		// printf("%i\n",GPOINTER_TO_INT(*ans2));	


		// // if (0)
		// if (!g_hash_table_find(hash, (GHRFunc)isin , *ptr)){
		// 	printf("not found \n");
		// 	int* cntptr = g_malloc(sizeof(int*));
		// 	g_hash_table_insert (hash, *ptr, cntptr);
		// }
		// else printf("found \n");
			
		// 	// continue;
		
		// printf("The word was: %s\n", *ptr);
		// // if (g_hash_table_find(hash, (GHRFunc)isin , *ptr))
		// // 	printf("not found \n");
		// else printf("found \n");
		// }
	}

	g_hash_table_foreach(hash, printKeyValue, NULL);
}