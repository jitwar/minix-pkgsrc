# $NetBSD: Makefile,v 1.3 2012/10/31 11:16:49 asau Exp $

DISTNAME=	ctemplate-0.99
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	http://google-ctemplate.googlecode.com/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://code.google.com/p/google-ctemplate/
COMMENT=	Simple but powerful template language for C++
LICENSE=	modified-bsd

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		perl
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE=	libctemplate.pc
PKGCONFIG_OVERRIDE+=	libctemplate_nothreads.pc
PKGCONFIG_OVERRIDE_STAGE=post-build
REPLACE_PERL=		src/template-converter

.include "../../mk/bsd.pkg.mk"
