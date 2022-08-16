/*
 * cabs() wrapper for hypot().
 *
 * Written by J.T. Conklin, <jtc@wimsey.com>
 * Placed into the Public Domain, 1994.
 */

//__FBSDID("$FreeBSD: src/lib/msun/src/w_cabs.c,v 1.7 2008/03/30 20:03:06 das Exp $");

#include "openlibm_intern.h"

OLM_DLLEXPORT double cabs(double complex z)
{
	return hypot(creal(z), cimag(z));
}
