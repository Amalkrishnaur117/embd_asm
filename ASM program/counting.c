#include <stdio.h>
#include <stdint.h>

int main(void)
{
	uint32_t x = 0xAAAAAAAA; 
	uint32_t y, z; 
	uint32_t counter = 0; 
	counter = x >> 31; 
	while (x > 0) { 
		y = x << 2;
		z = y>> 31; 
		if (x<<1 > y) 
			counter += z + 1;
		else 
			counter += z;
		x = y; 
} 
while(1);
}