# $NetBSD: Makefile,v 1.5 2011/11/01 06:02:42 sbd Exp $
#

DISTNAME=	echinus-0.4.3
PKGREVISION=	1
CATEGORIES=	wm
MASTER_SITES=	http://www.plhk.ru/static/echinus/

MAINTAINER=	polachok@gmail.com
HOMEPAGE=	http://www.plhk.ru/echinus
COMMENT=	Simple and lightweight tiling window manager
LICENSE=	mit

NO_CONFIGURE=	yes

USE_TOOLS+=	pkg-config

# Adjust config.mk
SUBST_CLASSES+=		makefile
SUBST_STAGE.makefile=	pre-build
SUBST_MESSAGE.makefile=	Fixing config.mk
SUBST_FILES.makefile=	config.mk
SUBST_SED.makefile+=	-e 's,/usr/local,${PREFIX},g'
SUBST_SED.makefile+=	-e 's,share/man,${PKGMANDIR},g'
SUBST_SED.makefile+=	-e 's,/usr/X11R6,${X11BASE},'
SUBST_SED.makefile+=	-e 's,^CFLAGS = ,CFLAGS += ,'
SUBST_SED.makefile+=	-e 's,^LDFLAGS = ,LDFLAGS += ,'
SUBST_SED.makefile+=	-e 's/cc/${CC:Q}/'

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

.include "options.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
