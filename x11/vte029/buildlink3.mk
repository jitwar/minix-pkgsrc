# $NetBSD: buildlink3.mk,v 1.2 2012/09/07 19:17:53 adam Exp $

BUILDLINK_TREE+=	vte029

.if !defined(VTE029_BUILDLINK3_MK)
VTE029_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.vte029+=	vte029>=0.32.2
BUILDLINK_ABI_DEPENDS.vte029+=	vte029>=0.32.2nb2
BUILDLINK_PKGSRCDIR.vte029?=	../../x11/vte029

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/termcap.buildlink3.mk"
.endif # VTE029_BUILDLINK3_MK

BUILDLINK_TREE+=	-vte029
