/* Counts cards based on user inputted card names.
*  any card of 10 or above (including Ace) will decrease counter,
*  while any card between 2 and 7 (not inclusive) will increa counter.
*/

#include <stdio.h>
#include <stdlib.h>

/* prompt and update user inputted card in memory
*/
void user_input(char* name_address){
	puts("Enter the card_name:"); /*promt user for input*/
	scanf("%2s", name_address); /*read and update user input*/
}

/* Converts card string into associated numerical value
*/
int card_val(char card[])
{
	
	int val = 0;
	
	switch(card[0]) { /*handles the various card cases*/
		case 'K':
		case 'Q':
		case 'J':
		    val = 10;
		    break;
		case 'A':
		   val = 11;
		   break;
		default:
		    val = atoi(card); /*convert string to int*/
		    if ((val<1)||(val>10)){ /*handle error*/
		    	puts("I don't understand that value!");
		    	break;
		    }
	}
	return val;

}

/* Based on inputted value, determine apropriate card counter action
*/
int handle_count(card_value)
{
	int delta = 0;
		if ((card_value > 2) && (card_value < 7)) { /*if small card*/
			delta++;
		} else if (card_value == 10) { /* if large card*/
			delta--;
		}
	return delta;

}


int main()
{		
	int count = 0;
	char card_name[3];

	while (card_name[0]!='X') { /*check if user wants to exit program*/
		user_input(card_name); /*take in user input*/
		count = count + handle_count(card_val(card_name)); /*update counter*/
		printf("Current count: %i\n", count); /*print current count */   
	}
	return 0;
}

