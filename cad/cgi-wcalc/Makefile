# $NetBSD: Makefile,v 1.4 2011/04/22 13:43:03 obache Exp $
#

.include "../../cad/wcalc/Makefile.common"
PKGNAME=	cgi-${DISTNAME}
PKGREVISION=	2

COMMENT=	CGI Based Transmission Line Analysis/Synthesis Calculator

DEPENDS+=	wcalc-docs-${VER}*:../../cad/wcalc-docs

# Only enable the CGI frontend
CONFIGURE_ARGS+=	--enable-cgi
CONFIGURE_ARGS+=	--disable-gtk1
CONFIGURE_ARGS+=	--disable-gtk2
CONFIGURE_ARGS+=	--disable-htdocs
CONFIGURE_ARGS+=	--disable-libwcalc
CONFIGURE_ARGS+=	--disable-stdio
CONFIGURE_ARGS+=	--without-matlab
CONFIGURE_ARGS+=	--without-octave
CONFIGURE_ARGS+=	--without-scilab

.include "../../cad/libwcalc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
