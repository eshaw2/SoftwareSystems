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


void main() {
	gchar *content, **word;
	gsize length;
	char* key_ptr;
 	int* value_ptr;

	g_file_get_contents(filename, &content, &length, NULL);
	gchar **text = g_strsplit_set(content, " .,:;?()\"\n", 0);
	g_free (content);

	GHashTable* hash = g_hash_table_new_full(g_str_hash, g_str_equal, free, free);

	for (word = text; *word; word++){
		// If we've seen this word before, increase the count
		if (g_hash_table_contains(hash,*word) == TRUE){
			value_ptr = g_hash_table_lookup(hash, *word);
			++*(value_ptr);
		}
		// If this is a new word, assign a new pointer to the word's counter	
		else {
			int* cntptr = g_malloc(sizeof(int));
			*cntptr = 1;
			g_hash_table_insert(hash, *word, cntptr);
		}
	// }
	}
	g_hash_table_foreach(hash, printKeyValue, NULL);
	g_fprintf(stderr, "there are a total of %i unique words.\n", g_hash_table_size(hash));

 	g_hash_table_unref(hash);
	
	
}