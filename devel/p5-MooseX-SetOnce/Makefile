# $NetBSD: Makefile,v 1.2 2012/10/03 21:55:21 wiz Exp $
#

DISTNAME=	MooseX-SetOnce-0.200001
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MooseX/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MooseX-SetOnce/
COMMENT=	Write-once, read-many attributes for Moose
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Moose>=0.90:../../devel/p5-Moose

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/MooseX/SetOnce/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
