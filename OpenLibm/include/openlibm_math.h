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
 * $FreeBSD: src/lib/msun/src/openlibm.h,v 1.82 2011/11/12 19:55:48 theraven Exp $
 */
#ifndef OPENLIBM_MATH_H
#define	OPENLIBM_MATH_H

#include <openlibm_defs.h>

#ifndef __pure2
#define __pure2
#endif

/*
 * ANSI/POSIX
 */
extern const union __infinity_un
{
	unsigned char	__uc[8];
	double		__ud;
} __infinity;

extern const union __nan_un
{
	unsigned char	__uc[sizeof(float)];
	float		__uf;
} __nan;

#define	HUGE_VAL	__builtin_huge_val()

#define	FP_ILOGB0	(-INT_MAX)
#define	FP_ILOGBNAN	INT_MAX

#define	HUGE_VALF	__builtin_huge_valf()
#define	HUGE_VALL	__builtin_huge_vall()
#define	INFINITY	__builtin_inff()
#define	NAN		    __builtin_nanf("")

#define	MATH_ERRNO	1
#define	MATH_ERREXCEPT	2
#define	math_errhandling	MATH_ERREXCEPT

#define	FP_FAST_FMAF	1

/* Symbolic constants to classify floating point numbers. */
#define	FP_INFINITE	    0x01
#define	FP_NAN		    0x02
#define	FP_NORMAL	    0x04
#define	FP_SUBNORMAL    0x08
#define	FP_ZERO		    0x10

#define	fpclassify(x)                                       \
    ((sizeof (x) == sizeof (float)) ? __fpclassifyf(x)      \
    : (sizeof (x) == sizeof (double)) ? __fpclassifyd(x)    \
    : __fpclassifyl(x))

#define	isfinite(x)					\
    ((sizeof (x) == sizeof (float)) ? __isfinitef(x)	\
    : (sizeof (x) == sizeof (double)) ? __isfinite(x)	\
    : __isfinitel(x))

#define	isinf(x)					                \
    ((sizeof (x) == sizeof (float)) ? __isinff(x)	\
    : (sizeof (x) == sizeof (double)) ? isinf(x)	\
    : __isinfl(x))

#define	isnan(x)					                \
    ((sizeof (x) == sizeof (float)) ? __isnanf(x)	\
    : (sizeof (x) == sizeof (double)) ? isnan(x)	\
    : __isnanl(x))

#define	isnormal(x)					                    \
    ((sizeof (x) == sizeof (float)) ? __isnormalf(x)	\
    : (sizeof (x) == sizeof (double)) ? __isnormal(x)	\
    : __isnormall(x))

#define	isgreater(x, y)		    __builtin_isgreater((x), (y))
#define	isgreaterequal(x, y)	__builtin_isgreaterequal((x), (y))
#define	isless(x, y)		    __builtin_isless((x), (y))
#define	islessequal(x, y)	    __builtin_islessequal((x), (y))
#define	islessgreater(x, y)	    __builtin_islessgreater((x), (y))
#define	isunordered(x, y)	    __builtin_isunordered((x), (y))

#define	signbit(x)					                    \
    ((sizeof (x) == sizeof (float)) ? __signbitf(x)	    \
    : (sizeof (x) == sizeof (double)) ? __signbit(x)	\
    : __signbitl(x))

#define	M_E		    2.7182818284590452354	/* e */
#define	M_LOG2E		1.4426950408889634074	/* log 2e */
#define	M_LOG10E	0.43429448190325182765	/* log 10e */
#define	M_LN2		0.69314718055994530942	/* log e2 */
#define	M_LN10		2.30258509299404568402	/* log e10 */
#define	M_PI		3.14159265358979323846	/* pi */
#define	M_PI_2		1.57079632679489661923	/* pi/2 */
#define	M_PI_4		0.78539816339744830962	/* pi/4 */
#define	M_1_PI		0.31830988618379067154	/* 1/pi */
#define	M_2_PI		0.63661977236758134308	/* 2/pi */
#define	M_2_SQRTPI	1.12837916709551257390	/* 2/sqrt(pi) */
#define	M_SQRT2		1.41421356237309504880	/* sqrt(2) */
#define	M_SQRT1_2	0.70710678118654752440	/* 1/sqrt(2) */

#define	MAXFLOAT	((float)3.40282346638528860e+38)

#ifndef OPENLIBM_ONLY_THREAD_SAFE
OLM_DLLEXPORT extern int signgam;
#endif

/*
 * Most of these functions depend on the rounding mode and have the side
 * effect of raising floating-point exceptions, so they are not declared
 * as __pure2.  In C99, FENV_ACCESS affects the purity of these functions.
 */

/* Symbol present when OpenLibm is used. */
int isopenlibm(void);

/*
 * ANSI/POSIX
 */
OLM_DLLEXPORT int	__fpclassifyd(double) __pure2;
OLM_DLLEXPORT int	__fpclassifyf(float) __pure2;
OLM_DLLEXPORT int	__fpclassifyl(long double) __pure2;
OLM_DLLEXPORT int	__isfinitef(float) __pure2;
OLM_DLLEXPORT int	__isfinite(double) __pure2;
OLM_DLLEXPORT int	__isfinitel(long double) __pure2;
OLM_DLLEXPORT int	__isinff(float) __pure2;
OLM_DLLEXPORT int	__isinfl(long double) __pure2;
OLM_DLLEXPORT int	__isnanf(float) __pure2;
OLM_DLLEXPORT int	__isnanl(long double) __pure2;
OLM_DLLEXPORT int	__isnormalf(float) __pure2;
OLM_DLLEXPORT int	__isnormal(double) __pure2;
OLM_DLLEXPORT int	__isnormall(long double) __pure2;
OLM_DLLEXPORT int	__signbit(double) __pure2;
OLM_DLLEXPORT int	__signbitf(float) __pure2;
OLM_DLLEXPORT int	__signbitl(long double) __pure2;

OLM_DLLEXPORT double	acos(double);
OLM_DLLEXPORT double	asin(double);
OLM_DLLEXPORT double	atan(double);
OLM_DLLEXPORT double	atan2(double, double);
OLM_DLLEXPORT double	cos(double);
OLM_DLLEXPORT double	sin(double);
OLM_DLLEXPORT double	tan(double);

OLM_DLLEXPORT double	cosh(double);
OLM_DLLEXPORT double	sinh(double);
OLM_DLLEXPORT double	tanh(double);

OLM_DLLEXPORT double	exp(double);
OLM_DLLEXPORT double	frexp(double, int *);	/* fundamentally !__pure2 */
OLM_DLLEXPORT double	ldexp(double, int);
OLM_DLLEXPORT double	log(double);
OLM_DLLEXPORT double	log10(double);
OLM_DLLEXPORT double	modf(double, double *);	/* fundamentally !__pure2 */

OLM_DLLEXPORT double	pow(double, double);
OLM_DLLEXPORT double	sqrt(double);

OLM_DLLEXPORT double	ceil(double);
OLM_DLLEXPORT double	fabs(double) __pure2;
OLM_DLLEXPORT double	floor(double);
OLM_DLLEXPORT double	fmod(double, double);

OLM_DLLEXPORT double	acosh(double);
OLM_DLLEXPORT double	asinh(double);
OLM_DLLEXPORT double	atanh(double);
OLM_DLLEXPORT double	cbrt(double);
OLM_DLLEXPORT double	erf(double);
OLM_DLLEXPORT double	erfc(double);
OLM_DLLEXPORT double	exp2(double);
OLM_DLLEXPORT double	expm1(double);
OLM_DLLEXPORT double	fma(double, double, double);
OLM_DLLEXPORT double	hypot(double, double);
OLM_DLLEXPORT int	ilogb(double) __pure2;
OLM_DLLEXPORT int	(isinf)(double) __pure2;
OLM_DLLEXPORT int	(isnan)(double) __pure2;
OLM_DLLEXPORT double	lgamma(double);
OLM_DLLEXPORT long long llrint(double);
OLM_DLLEXPORT long long llround(double);
OLM_DLLEXPORT double	log1p(double);
OLM_DLLEXPORT double	log2(double);
OLM_DLLEXPORT double	logb(double);
OLM_DLLEXPORT long	    lrint(double);
OLM_DLLEXPORT long	    lround(double);
OLM_DLLEXPORT double	nan(const char *) __pure2;
OLM_DLLEXPORT double	nextafter(double, double);
OLM_DLLEXPORT double	remainder(double, double);
OLM_DLLEXPORT double	remquo(double, double, int *);
OLM_DLLEXPORT double	rint(double);

OLM_DLLEXPORT double	j0(double);
OLM_DLLEXPORT double	j1(double);
OLM_DLLEXPORT double	jn(int, double);
OLM_DLLEXPORT double	y0(double);
OLM_DLLEXPORT double	y1(double);
OLM_DLLEXPORT double	yn(int, double);

OLM_DLLEXPORT double	copysign(double, double) __pure2;
OLM_DLLEXPORT double	fdim(double, double);
OLM_DLLEXPORT double	fmax(double, double) __pure2;
OLM_DLLEXPORT double	fmin(double, double) __pure2;
OLM_DLLEXPORT double	nearbyint(double);
OLM_DLLEXPORT double	round(double);
OLM_DLLEXPORT double	scalbln(double, long);
OLM_DLLEXPORT double	scalbn(double, int);
OLM_DLLEXPORT double	tgamma(double);
OLM_DLLEXPORT double	trunc(double);

/*
 * BSD math library entry points
 */
OLM_DLLEXPORT int	isinff(float) __pure2;
OLM_DLLEXPORT int	isnanf(float) __pure2;

/*
 * Reentrant version of lgamma; passes signgam back by reference as the
 * second argument; user must allocate space for signgam.
 */
OLM_DLLEXPORT double	lgamma_r(double, int *);

/*
 * Single sine/cosine function.
 */
OLM_DLLEXPORT void	sincos(double, double *, double *);

/* float versions of ANSI/POSIX functions */
OLM_DLLEXPORT float	acosf(float);
OLM_DLLEXPORT float	asinf(float);
OLM_DLLEXPORT float	atanf(float);
OLM_DLLEXPORT float	atan2f(float, float);
OLM_DLLEXPORT float	cosf(float);
OLM_DLLEXPORT float	sinf(float);
OLM_DLLEXPORT float	tanf(float);

OLM_DLLEXPORT float	coshf(float);
OLM_DLLEXPORT float	sinhf(float);
OLM_DLLEXPORT float	tanhf(float);

OLM_DLLEXPORT float	exp2f(float);
OLM_DLLEXPORT float	expf(float);
OLM_DLLEXPORT float	expm1f(float);
OLM_DLLEXPORT float	frexpf(float, int *);	/* fundamentally !__pure2 */
OLM_DLLEXPORT int	ilogbf(float) __pure2;
OLM_DLLEXPORT float	ldexpf(float, int);
OLM_DLLEXPORT float	log10f(float);
OLM_DLLEXPORT float	log1pf(float);
OLM_DLLEXPORT float	log2f(float);
OLM_DLLEXPORT float	logf(float);
OLM_DLLEXPORT float	modff(float, float *);	/* fundamentally !__pure2 */

OLM_DLLEXPORT float	powf(float, float);
OLM_DLLEXPORT float	sqrtf(float);

OLM_DLLEXPORT float	ceilf(float);
OLM_DLLEXPORT float	fabsf(float) __pure2;
OLM_DLLEXPORT float	floorf(float);
OLM_DLLEXPORT float	fmodf(float, float);
OLM_DLLEXPORT float	roundf(float);

OLM_DLLEXPORT float	erff(float);
OLM_DLLEXPORT float	erfcf(float);
OLM_DLLEXPORT float	hypotf(float, float);
OLM_DLLEXPORT float	lgammaf(float);
OLM_DLLEXPORT float	tgammaf(float);

OLM_DLLEXPORT float	acoshf(float);
OLM_DLLEXPORT float	asinhf(float);
OLM_DLLEXPORT float	atanhf(float);
OLM_DLLEXPORT float	cbrtf(float);
OLM_DLLEXPORT float	logbf(float);
OLM_DLLEXPORT float	copysignf(float, float) __pure2;
OLM_DLLEXPORT long long llrintf(float);
OLM_DLLEXPORT long long llroundf(float);
OLM_DLLEXPORT long	lrintf(float);
OLM_DLLEXPORT long	lroundf(float);
OLM_DLLEXPORT float	nanf(const char *) __pure2;
OLM_DLLEXPORT float	nearbyintf(float);
OLM_DLLEXPORT float	nextafterf(float, float);
OLM_DLLEXPORT float	remainderf(float, float);
OLM_DLLEXPORT float	remquof(float, float, int *);
OLM_DLLEXPORT float	rintf(float);
OLM_DLLEXPORT float	scalblnf(float, long);
OLM_DLLEXPORT float	scalbnf(float, int);
OLM_DLLEXPORT float	truncf(float);

OLM_DLLEXPORT float	fdimf(float, float);
OLM_DLLEXPORT float	fmaf(float, float, float);
OLM_DLLEXPORT float	fmaxf(float, float) __pure2;
OLM_DLLEXPORT float	fminf(float, float) __pure2;

/*
 * float versions of BSD math library entry points
 */
OLM_DLLEXPORT float	dremf(float, float);
OLM_DLLEXPORT float	j0f(float);
OLM_DLLEXPORT float	j1f(float);
OLM_DLLEXPORT float	jnf(int, float);
OLM_DLLEXPORT float	y0f(float);
OLM_DLLEXPORT float	y1f(float);
OLM_DLLEXPORT float	ynf(int, float);

/*
 * Float versions of reentrant version of lgamma; passes signgam back by
 * reference as the second argument; user must allocate space for signgam.
 */
OLM_DLLEXPORT float	lgammaf_r(float, int *);

/*
 * Single sine/cosine function.
 */
OLM_DLLEXPORT void	sincosf(float, float *, float *);


#endif /* !OPENLIBM_MATH_H */
