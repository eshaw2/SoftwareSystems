#include <stdio.h>
#include <glib.h>
#include <glib/gprintf.h>
#include <stdlib.h>
#include <string.h>


const gchar *filename = "Macbeth.txt";


void printKeyValue( gpointer key, gpointer value, gpointer userData ) {
   char* realKey = (char*)key;
   char* realValue = (char*)value;

   printf( "%s => %i\n", realKey, *realValue );
   return;
}


gboolean isin (gpointer key, gpointer value, gpointer user_data){
	return strcmp(key, user_data);
}

void main() {
	gchar *content, **ptr;
	gsize length;
	char* key_ptr;
 	int* value_ptr;

	g_file_get_contents(filename, &content, &length, NULL);
	gchar **words = g_strsplit_set(content, " .,:;?()\"\n", 0);
	g_free (content);

	// GHashTable* hash = g_hash_table_new(g_str_hash, g_str_equal);
	GHashTable* hash = g_hash_table_new_full(g_str_hash, g_str_equal, free, free);

	for (ptr = words; *ptr; ptr++){
		int* cntptr = g_malloc(sizeof(int));
		*cntptr = 1;
		g_hash_table_insert (hash, *ptr, cntptr);

	}

	g_hash_table_foreach(hash, printKeyValue, NULL);
	g_fprintf(stderr, "hash table size is: %i\n", g_hash_table_size(hash));

 	g_hash_table_unref(hash);
	
	
}