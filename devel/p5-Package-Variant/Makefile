# $NetBSD: Makefile,v 1.1 2012/10/19 07:50:56 sno Exp $
#

DISTNAME=	Package-Variant-1.001002
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Package/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Package-Variant/
COMMENT=	Perl5 module wrapper for parameterizable packages
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews

DEPENDS+=	p5-Import-Into>=1.0:../../devel/p5-Import-Into
DEPENDS+=	p5-Module-Runtime>=0.13:../../devel/p5-Module-Runtime
DEPENDS+=	p5-strictures>=1.0:../../devel/p5-strictures

BUILD_DEPENDS+=	p5-Test-Fatal-[0-9]*:../../devel/p5-Test-Fatal

PERL5_PACKLIST=	auto/Package/Variant/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
