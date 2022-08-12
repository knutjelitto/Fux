#include <stdint.h>

#include "libm.h"

#undef cos

double cos(double x);


void mathlinker(int x, int y)
{
    cos(1.0);
    sin(1.0);
    tan(1.0);

    sqrt(1.0);
}
