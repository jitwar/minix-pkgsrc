# $NetBSD: Makefile,v 1.7 2008/06/20 01:09:43 joerg Exp $
#

DISTNAME=		visitors-0.7
CATEGORIES=		www
MASTER_SITES=		http://www.hping.org/visitors/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.hping.org/visitors/
COMMENT=		Very fast web log analyzer

WRKSRC=			${WRKDIR}/visitors_0.7
INSTALLATION_DIRS=	bin share/visitors share/doc/visitors

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/visitors ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/*.png ${DESTDIR}${PREFIX}/share/visitors
	${INSTALL_DATA} ${WRKSRC}/doc.html ${DESTDIR}${PREFIX}/share/doc/visitors

.include "../../mk/bsd.pkg.mk"
