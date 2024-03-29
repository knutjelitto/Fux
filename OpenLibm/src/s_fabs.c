/* @(#)s_fabs.c 5.1 93/09/24 */
/*
 * ====================================================
 * Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
 *
 * Developed at SunPro, a Sun Microsystems, Inc. business.
 * Permission to use, copy, modify, and distribute this
 * software is freely granted, provided that this notice
 * is preserved.
 * ====================================================
 */

/*
 * fabs(x) returns the absolute value of x.
 */

#include "openlibm_intern.h"

OLM_DLLEXPORT double fabs(double x)
{
    uint32_t high;

    GET_HIGH_WORD(high,x);
    SET_HIGH_WORD(x, high & 0x7fffffff);
    
    return x;
}
