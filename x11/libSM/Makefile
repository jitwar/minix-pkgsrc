# $NetBSD: Makefile,v 1.10 2012/06/09 07:00:47 obache Exp $
#

DISTNAME=		libSM-1.2.1
CATEGORIES=		x11 devel
MASTER_SITES=		${MASTER_SITE_XORG:=lib/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		X Session Management Library

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config

PKGCONFIG_OVERRIDE+=	sm.pc.in

CONFIGURE_ARGS+=	--without-libuuid

.include "options.mk"

.include "../../meta-pkgs/modular-xorg/hacks.mk"

.include "../../x11/libICE/buildlink3.mk"
.include "../../x11/xproto/buildlink3.mk"
.include "../../x11/xtrans/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
