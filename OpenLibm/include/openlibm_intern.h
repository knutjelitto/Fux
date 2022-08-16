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
 * from: @(#)fdlibm.h 5.1 93/09/24
 * $FreeBSD: src/lib/msun/src/math_private.h,v 1.34 2011/10/21 06:27:56 das Exp $
 */

#ifndef _OPENLIBM_INTERN_H_
#define	_OPENLIBM_INTERN_H_

#include <float.h>
#include <stdint.h>
#include "openlibm_math.h"
#include "openlibm_complex.h"
#include "openlibm_defs.h"

union IEEEf2bits
{
	float	f;
	struct
	{
		unsigned int	man		:23;
		unsigned int	exp		:8;
		unsigned int	sign	:1;
	} bits;
};

union IEEEd2bits
{
	double	d;
	struct
	{
		unsigned int	manl	:32;
		unsigned int	manh	:20;
		unsigned int	exp		:11;
		unsigned int	sign	:1;
	} bits;
};

/*
 * Common routine to process the arguments to nan(), nanf(), and nanl().
 */
void __scan_nan(uint32_t *__words, int __num_words, const char *__s);

struct Double
{
	double	a;
	double	b;
};

/*
 * Functions internal to the math package, yet not static.
 */
double __exp__D(double, double);
struct Double __log__D(double);

/*
 * The original fdlibm code used statements like:
 *	n0 = ((*(int*)&one)>>29)^1;		* index of high word *
 *	ix0 = *(n0+(int*)&x);			* high word of x *
 *	ix1 = *((1-n0)+(int*)&x);		* low word of x *
 * to dig two 32 bit words out of the 64 bit IEEE floating point
 * value.  That is non-ANSI, and, moreover, the gcc instruction
 * scheduler gets it wrong.  We instead use the following macros.
 * Unlike the original code, we determine the endianness at compile
 * time, not at run time; I don't see much benefit to selecting
 * endianness at run time.
 */

/*
 * A union which permits us to convert between a double and two 32 bit
 * ints.
 */


typedef union
{
    double value;
    struct
    {
        uint32_t lsw;
        uint32_t msw;
    } parts;
    struct
    {
        uint64_t w;
    } xparts;
} ieee_double_shape_type;

/* Get two 32 bit ints from a double.  */

#define EXTRACT_WORDS(ix0,ix1,d)				\
do {								\
    ieee_double_shape_type ew_u;					\
    ew_u.value = (d);						\
    (ix0) = ew_u.parts.msw;					\
    (ix1) = ew_u.parts.lsw;					\
} while (0)

/* Get a 64-bit int from a double. */
#define EXTRACT_WORD64(ix,d)					\
do {								\
    ieee_double_shape_type ew_u;					\
    ew_u.value = (d);						\
    (ix) = ew_u.xparts.w;						\
} while (0)

/* Get the more significant 32 bit int from a double.  */

#define GET_HIGH_WORD(i,d)          \
do {                                \
    ieee_double_shape_type gh_u;    \
    gh_u.value = (d);               \
    (i) = gh_u.parts.msw;           \
} while (0)

/* Get the less significant 32 bit int from a double.  */

#define GET_LOW_WORD(i,d)					\
do {								\
    ieee_double_shape_type gl_u;					\
    gl_u.value = (d);						\
    (i) = gl_u.parts.lsw;						\
} while (0)

/* Set a double from two 32 bit ints.  */

#define INSERT_WORDS(d,ix0,ix1)					\
do {								\
    ieee_double_shape_type iw_u;					\
    iw_u.parts.msw = (ix0);					\
    iw_u.parts.lsw = (ix1);					\
    (d) = iw_u.value;						\
} while (0)

/* Set a double from a 64-bit int. */
#define INSERT_WORD64(d,ix)					\
do {								\
    ieee_double_shape_type iw_u;					\
    iw_u.xparts.w = (ix);						\
    (d) = iw_u.value;						\
} while (0)

/* Set the more significant 32 bits of a double from an int.  */

#define SET_HIGH_WORD(d,v)					\
do {								\
    ieee_double_shape_type sh_u;					\
    sh_u.value = (d);						\
    sh_u.parts.msw = (v);						\
    (d) = sh_u.value;						\
} while (0)

/* Set the less significant 32 bits of a double from an int.  */

#define SET_LOW_WORD(d,v)					\
do {								\
    ieee_double_shape_type sl_u;					\
    sl_u.value = (d);						\
    sl_u.parts.lsw = (v);						\
    (d) = sl_u.value;						\
} while (0)

/*
 * A union which permits us to convert between a float and a 32 bit
 * int.
 */

typedef union
{
    float value;
    /* FIXME: Assumes 32 bit int.  */
    unsigned int word;
} ieee_float_shape_type;

/* Get a 32 bit int from a float.  */

#define GET_FLOAT_WORD(i,d)					\
do {								\
    ieee_float_shape_type gf_u;					\
    gf_u.value = (d);						\
    (i) = gf_u.word;						\
} while (0)

/* Set a float from a 32 bit int.  */

#define SET_FLOAT_WORD(d,i)					\
do {								\
    ieee_float_shape_type sf_u;					\
    sf_u.word = (i);						\
    (d) = sf_u.value;						\
} while (0)


#define	STRICT_ASSIGN(type, lval, rval)	((lval) = (rval))

/*
 * Common routine to process the arguments to nan(), nanf(), and nanl().
 */
void __scan_nan(uint32_t *__words, int __num_words, const char *__s);

/*
 * ieee style elementary functions
 *
 * We rename functions here to improve other sources' diffability
 * against fdlibm.
 */
#define	__ieee754_sqrt	sqrt
#define	__ieee754_acos	acos
#define	__ieee754_acosh	acosh
#define	__ieee754_log	log
#define	__ieee754_log2	log2
#define	__ieee754_atanh	atanh
#define	__ieee754_asin	asin
#define	__ieee754_atan2	atan2
#define	__ieee754_exp	exp
#define	__ieee754_cosh	cosh
#define	__ieee754_fmod	fmod
#define	__ieee754_pow	pow
#define	__ieee754_lgamma lgamma
#define	__ieee754_lgamma_r lgamma_r
#define	__ieee754_log10	log10
#define	__ieee754_sinh	sinh
#define	__ieee754_hypot	hypot
#define	__ieee754_j0	j0
#define	__ieee754_j1	j1
#define	__ieee754_y0	y0
#define	__ieee754_y1	y1
#define	__ieee754_jn	jn
#define	__ieee754_yn	yn
#define	__ieee754_remainder remainder
#define	__ieee754_sqrtf	sqrtf
#define	__ieee754_acosf	acosf
#define	__ieee754_acoshf acoshf
#define	__ieee754_logf	logf
#define	__ieee754_atanhf atanhf
#define	__ieee754_asinf	asinf
#define	__ieee754_atan2f atan2f
#define	__ieee754_expf	expf
#define	__ieee754_coshf	coshf
#define	__ieee754_fmodf	fmodf
#define	__ieee754_powf	powf
#define	__ieee754_lgammaf lgammaf
#define	__ieee754_lgammaf_r lgammaf_r
#define	__ieee754_log10f log10f
#define	__ieee754_log2f log2f
#define	__ieee754_sinhf	sinhf
#define	__ieee754_hypotf hypotf
#define	__ieee754_j0f	j0f
#define	__ieee754_j1f	j1f
#define	__ieee754_y0f	y0f
#define	__ieee754_y1f	y1f
#define	__ieee754_jnf	jnf
#define	__ieee754_ynf	ynf
#define	__ieee754_remainderf remainderf

/* fdlibm kernel function */
int	__kernel_rem_pio2(double*, double*, int, int, int);

/* double precision kernel functions */
int	__ieee754_rem_pio2(double, double*);
double	__kernel_sin(double, double, int);
double	__kernel_cos(double, double);
double	__kernel_tan(double, double, int);
double	__ldexp_exp(double, int);
double complex __ldexp_cexp(double complex, int);

/* single precision kernel functions */
int	__ieee754_rem_pio2f(float, double*);
float	__kernel_sindf(double);
float	__kernel_cosdf(double);
float	__kernel_tandf(double, int);
float	__ldexp_expf(float,int);
float complex __ldexp_cexpf(float complex, int);

#endif /* !_OPENLIBM_INTERN_H_ */
