# $NetBSD: buildlink2.mk,v 1.3 2002/12/28 19:49:07 jschauma Exp $

.if !defined(XFORMS_BUILDLINK2_MK)
XFORMS_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=		xforms
BUILDLINK_DEPENDS.xforms?=	xforms>=1.0
BUILDLINK_PKGSRCDIR.xforms?=	../../x11/xforms

EVAL_PREFIX+=			BUILDLINK_PREFIX.xforms=xforms
BUILDLINK_PREFIX.xforms_DEFAULT=	${X11PREFIX}
BUILDLINK_FILES.xforms+=	include/X11/flimage.h
BUILDLINK_FILES.xforms+=	include/X11/forms.h
BUILDLINK_FILES.xforms+=	lib/libflimage.*
BUILDLINK_FILES.xforms+=	lib/libforms.*

.include "../../graphics/jpeg/buildlink2.mk"
.include "../../graphics/tiff/buildlink2.mk"
.include "../../graphics/xpm/buildlink2.mk"

BUILDLINK_TARGETS+=	xforms-buildlink

xforms-buildlink: _BUILDLINK_USE

.endif	# XFORMS_BUILDLINK2_MK
