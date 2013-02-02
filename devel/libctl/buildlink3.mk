# $NetBSD$

BUILDLINK_TREE+=	libctl

.if !defined(LIBCTL_BUILDLINK3_MK)
LIBCTL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libctl+=	libctl>=3.2.1
BUILDLINK_PKGSRCDIR.libctl?=	../../devel/libctl

.include "../../lang/guile/buildlink3.mk"
.endif	# LIBCTL_BUILDLINK3_MK

BUILDLINK_TREE+=	-libctl
