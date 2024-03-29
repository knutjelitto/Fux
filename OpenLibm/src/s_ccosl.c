/*	$OpenBSD: s_ccosl.c,v 1.2 2011/07/20 19:28:33 martynas Exp $	*/

/*
 * Copyright (c) 2008 Stephen L. Moshier <steve@moshier.net>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

/*							ccosl()
 *
 *	Complex circular cosine
 *
 *
 *
 * SYNOPSIS:
 *
 * long double complex ccosl();
 * long double complex z, w;
 *
 * w = ccosl( z );
 *
 *
 *
 * DESCRIPTION:
 *
 * If
 *     z = x + iy,
 *
 * then
 *
 *     w = cos x  cosh y  -  i sin x sinh y.
 *
 *
 *
 * ACCURACY:
 *
 *                      Relative error:
 * arithmetic   domain     # trials      peak         rms
 *    DEC       -10,+10      8400       4.5e-17     1.3e-17
 *    IEEE      -10,+10     30000       3.8e-16     1.0e-16
 */

#include <openlibm_complex.h>
#include "openlibm_math.h"

static void
cchshl(long double x, long double *c, long double *s)
{
	long double e, ei;

	if(fabsl(x) <= 0.5L) {
		*c = coshl(x);
		*s = sinhl(x);
	} else {
		e = expl(x);
		ei = 0.5L/e;
		e = 0.5L * e;
		*s = e - ei;
		*c = e + ei;
	}
}

long double complex
ccosl(long double complex z)
{
	long double complex w;
	long double ch, sh;

	cchshl(cimagl(z), &ch, &sh);
	w = cosl(creall(z)) * ch + (-sinl(creall(z)) * sh) * I;
	return (w);
}
