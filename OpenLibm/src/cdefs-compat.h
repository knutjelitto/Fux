#ifndef _CDEFS_COMPAT_H_
#define	_CDEFS_COMPAT_H_

#define openlibm_strong_reference(sym,aliassym)	OLM_DLLEXPORT extern __typeof (aliassym) aliassym __attribute__ ((__alias__ (#sym)));
#define openlibm_weak_reference(sym,alias) openlibm_strong_reference(sym,alias)

#endif /* _CDEFS_COMPAT_H_ */
