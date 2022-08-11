#if 0
#include "../../musl/src/math/__math_invalid.c"
#else

#include "libm.h"
double __math_invalid(double x)
{
	return __builtin_nan("");
}

#endif

