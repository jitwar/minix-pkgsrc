# $NetBSD$

BUILDLINK_TREE+=	harminv

.if !defined(HARMINV_BUILDLINK3_MK)
HARMINV_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.harminv+=	harminv>=1.3.1
BUILDLINK_PKGSRCDIR.harminv?=	../../math/harminv

.endif	# HARMINV_BUILDLINK3_MK

BUILDLINK_TREE+=	-harminv
