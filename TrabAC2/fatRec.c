#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

__uint128_t fatorial (__uint128_t n) {
    if (n == 0) {
        return 1;
    } else {
        return n * fatorial(n - 1);
    }
}

void print_uint128(__uint128_t n) {
    if (n > UINT64_MAX) {
        unsigned long long high = n / 10000000000000000000ULL;
        unsigned long long low = n % 10000000000000000000ULL;
        printf("%llu%019llu\n", high, low);
    } else {
        printf("%llu\n", (unsigned long long)n);
    }
}

int main(int argc, char const *argv[])
{
    __uint128_t n = 0;
    char input[40];
    scanf("%39s", input);
    n = strtoull(input, NULL, 10);
    __uint128_t result = fatorial(n);
    print_uint128(result);
    return 0;  
}
