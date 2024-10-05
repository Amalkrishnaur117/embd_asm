#include <stdio.h>

int main(void) {
    int number = 123456;
    int count = 0;

    while (number) {
        number = number / 10;
        count++;
    }
		while(1);
    return 0;
}
