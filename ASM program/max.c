#include <stdio.h>

int array[10] = { -1, 5, 3, 8, 10, 23, 6, 5, 2, -10}; 
int size = 10; 
int main(void) { 
int i, maxLocation, maxValue; 
	maxLocation = 0; 
	maxValue = array[0]; 
	for ( i = 0; i < size; i++ ){ 
		if (array[i] > maxValue){
			maxValue = array[i]; 
			maxLocation = i;
		}
	} 
	while(1);
} 


