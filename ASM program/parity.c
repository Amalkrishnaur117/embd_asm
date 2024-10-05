#include <stdint.h>
#include <stdio.h>

int main(void) {
    uint32_t n = 11;
    int parity = 0;

    while (n) {
        parity = !parity;
        n = n & (n - 1);
    }
	while(1);
}
