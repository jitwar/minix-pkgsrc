# $NetBSD$
#
# This Makefile fragment is included by packages that use samba.
#
# This file was created automatically using createbuildlink 2.6.
#

.if !defined(SAMBA_BUILDLINK2_MK)
SAMBA_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=			samba
BUILDLINK_DEPENDS.samba?=		samba>=2.2.8anb2
BUILDLINK_PKGSRCDIR.samba?=		../../net/samba

EVAL_PREFIX+=	BUILDLINK_PREFIX.samba=samba
BUILDLINK_PREFIX.samba_DEFAULT=	${LOCALBASE}

.include "../../print/cups/buildlink2.mk"
.include "../../security/PAM/buildlink2.mk"
.include "../../databases/openldap/buildlink2.mk"
.include "../../devel/readline/buildlink2.mk"
.include "../../security/openssl/buildlink2.mk"

BUILDLINK_TARGETS+=	samba-buildlink

samba-buildlink: _BUILDLINK_USE

.endif	# SAMBA_BUILDLINK2_MK
