# $NetBSD: builtin.mk,v 1.2 2004/10/08 04:02:35 xtraeme Exp $

_COMPOSITE_H=		${X11BASE}/include/X11/extensions/composite.h
_COMPOSITE_PROTO_H=	${X11BASE}/include/X11/extensions/compositeproto.h
_COMPOSITEEXT_PC=	${X11BASE}/lib/X11/pkgconfig/compositeext.pc

.if !defined(IS_BUILTIN.compositeext)
IS_BUILTIN.compositeext=     no
.  if exists(${_COMPOSITE_H}) && exists(${_COMPOSITE_PROTO_H}) && \
      exists(${_COMPOSITEEXT_PC})
IS_BUILTIN.compositeext=     yes
.  endif
.endif  # IS_BUILTIN.compositeext

USE_BUILTIN.compositeext?=   ${IS_BUILTIN.compositeext}
