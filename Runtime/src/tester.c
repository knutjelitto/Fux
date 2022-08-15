#include <stdint.h>

#include <math.h>

void mathlinker()
{
    double x = 1.0;
    double y = 1.0;

    core_math_cos(x);
    core_math_sin(x);
    core_math_tan(x);
    core_math_sqrt(x);
}
