# $NetBSD: buildlink2.mk,v 1.1 2003/06/04 19:27:55 drochner Exp $

.if !defined(PY_PQUEUE_BUILDLINK2_MK)
PY_PQUEUE_BUILDLINK2_MK=	# defined

.include "../../lang/python/pyversion.mk"

BUILDLINK_PACKAGES+=			pypqueue
BUILDLINK_DEPENDS.pypqueue?=		${PYPKGPREFIX}-pqueue-[0-9]*
BUILDLINK_PKGSRCDIR.pypqueue?=		../../devel/py-pqueue

.endif	# PY_PQUEUE_BUILDLINK2_MK
