# $NetBSD: buildlink3.mk,v 1.1 2006/11/17 15:11:31 obache Exp $

BUILDLINK_TREE+=	hyperestraier

.if !defined(HYPERESTRAIER_BUILDLINK3_MK)
HYPERESTRAIER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hyperestraier+=	hyperestraier>=1.1.2
BUILDLINK_PKGSRCDIR.hyperestraier?=	../../textproc/hyperestraier

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../archivers/lzo/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../databases/qdbm/buildlink3.mk"
.endif # HYPERESTRAIER_BUILDLINK3_MK

BUILDLINK_TREE+=	-hyperestraier
