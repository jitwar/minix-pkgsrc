# $NetBSD: Makefile,v 1.11 2012/10/03 21:56:45 wiz Exp $

DISTNAME=	File-Tail-0.99.3
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
SVR4_PKGNAME=	p5fit
CATEGORIES=	misc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=File/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/File-Tail/
COMMENT=	Perl5 module for reading from continuously updated files

DEPENDS+=	p5-Time-HiRes>1.12:../../time/p5-Time-HiRes

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/File/Tail/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
