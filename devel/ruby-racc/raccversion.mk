# $NetBSD$
.ifndef _RUBY_RACCVERSION_MK

_RUBY_RACCVERSION_MK=	# defined

.if ${RUBY_NAME} != "ruby${RUBY_VER_DEFAULT}"
RACC?=		racc-${RUBY_VER}
RACC2Y?=	racc2y-${RUBY_VER}
Y2RACC?=	y2racc-${RUBY_VER}
.else
RACC?=		racc
RACC2Y?=	racc2y
Y2RACC?=	y2racc
.endif

.endif
