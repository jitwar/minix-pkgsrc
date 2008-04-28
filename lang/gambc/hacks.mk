# $NetBSD$
###
.if !defined(GAMBC_HACKS_MK)
GAMBC_HACKS_MK=	# empty
.  include "../../mk/compiler.mk"
###
### It looks as if the developers don't think O2 is a win.  Considering how
### much memory and time this package takes to build the more optimization
### is enabled, let's let the configure script do its job.
###
.  if !empty(CC_VERSION:Mgcc-*)
BUILDLINK_TRANSFORM+=	rm:-O[2-9s]*
.  endif
.endif
