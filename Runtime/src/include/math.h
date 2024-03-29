#pragma once

#include <stdbool.h>
#include <stdint.h>

#define FP_NAN       0
#define FP_INFINITE  1
#define FP_ZERO      2
#define FP_SUBNORMAL 3
#define FP_NORMAL    4

bool         isnan(double);

#define DECLARE(name, result, signature) result core_math_ ## name signature

DECLARE(cos, double, (double));
DECLARE(sin, double, (double));
DECLARE(tan, double, (double));

double      acos(double);
double      asin(double);
double      atan(double);
double      atan2(double, double);

double      acosh(double);
double      asinh(double);
double      atanh(double);
double      cosh(double);
double      erf(double);
double      erfc(double);
double      exp(double);
double      exp2(double);
double      expm1(double);
double      fabs(double);
double      fdim(double, double);

double      fma(double, double, double);
double      fmax(double, double);
double      fmin(double, double);
double      fmod(double, double);
double      frexp(double, int *);
double      hypot(double, double);
int         ilogb(double);
double      ldexp(double, int);
double      lgamma(double);
long long   llrint(double);
long long   llround(double);
double      log(double);
double      log10(double);
double      log1p(double);
double      log2(double);
double      logb(double);
long        lrint(double);
long        lround(double);
double      modf(double, double *);
double      nan(const char *);
double      nearbyint(double);
double      nextafter(double, double);
double      nexttoward(double, long double);
double      pow(double, double);
double      remainder(double, double);
double      remquo(double, double, int *);
double      rint(double);
double      round(double);
double      scalbln(double, long);
double      scalbn(double, int);
double      sinh(double);
DECLARE(sqrt, double, (double));
double      tanh(double);
double      tgamma(double);
double      trunc(double);

double      cbrt(double);
double      copysign(double, double);
