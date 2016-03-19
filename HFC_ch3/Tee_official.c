/* Takes an inputted file and makes multiple output
* copies as named in command prompt:
* ./Tee [Options] [input file path] [output file names]
*
* Options currently includes:
* -a to append output to end of existing file
*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char * argv[]){
	char line[80];
	int count = 0;
	int append = 0;
	char ch;

	FILE *in = fopen(argv[1], "r"); // read the declared input file

	while ((ch = getopt(argc, argv, "a")) !=EOF) { //Handle Options
		switch(ch) {
			case 'a':
				append = 1;
				fprintf(stdout, "Info will be appended to file \n");
				break;
			default:
				fprintf(stdout, "File will be overwritten \n");
				return 1;
		}

	}

	argc -= optind; //reset count ignoring Options
	argv += optind;

	for (count = 1; count < argc; count++){ //for each output file declared
		FILE *out_file = fopen(argv[count], "w");
		fprintf(stdout, "Initial location: %p\n", out_file);

		if (append){ // if Append option is declared, set up file to be appendable
			out_file = fopen(argv[count], "a");
			fseek(out_file, 0, SEEK_END);
			fprintf(stdout, "Appended location: %p\n", out_file);
			}

		fprintf(stdout, "Current location: %p\n", out_file);
		while (fscanf(in,"%79[^\n]\n", line) == 1){ // copy each line of inputted file
			
			fprintf(out_file, "%s\n", line);
			fprintf(stdout,"%s\n", line);	
		}
		fclose(out_file);
		
	}
	fclose(in);


	return 0;
	
}