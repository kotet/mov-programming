#include <stdio.h>

#include "movprogs.h"

int main(void)
{
    printf("equal(2,3) = %d\n", equal(2, 3));
    printf("equal(3,3) = %d\n", equal(3, 3));

    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 2; j++)
            printf("and(%d,%d) = %d\n", i, j, and(i, j));

    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 2; j++)
        {
            char c;
            char s = halfadder(i, j, &c);
            printf("halfadder(%d,%d) = %d %d\n", i, j, c, s);
        }

    return 0;
}
