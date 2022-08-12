#include <openlibm_math.h>

#include "math_private.h"

OLM_DLLEXPORT int isopenlibm(void)
{
    return 1;
}

OLM_DLLEXPORT void reference()
{
    (void) &cos;
}
