# $NetBSD: Makefile,v 1.4 2011/09/21 09:39:01 sborrill Exp $
#

DISTNAME=	ntlm2
PKGNAME=	${APACHE_PKG_PREFIX}-auth-ntlm-${DISTVERS}
CATEGORIES=	www
MASTER_SITES=	http://www.jamiekerwick.co.uk/modntlm/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://modntlm.sourceforge.net/
COMMENT=	Apache module for NTLM authentication

PKG_APACHE_ACCEPTED=	apache2 apache22

.include "../../mk/apache.mk"

APACHE_MODULE_NAME=	mod_ntlm.${MODULE_EXT}

WRKSRC=		${WRKDIR}

DISTVERS=	0.2
MODULE_EXT=	la

MESSAGE_SUBST+=	MODULE_NAME=ntlm_module
MESSAGE_SUBST+=	EGDIR=${EGDIR}

EGDIR=		${PREFIX}/share/examples/mod_ntlm

INSTALLATION_DIRS+=	${EGDIR}

post-install:
	${INSTALL_DATA} ${WRKSRC}/ntlm.conf ${DESTDIR}${EGDIR}

.include "../../www/apache/module.mk"
.include "../../mk/bsd.pkg.mk"
