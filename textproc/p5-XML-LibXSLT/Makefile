# $NetBSD: Makefile,v 1.25 2012/10/21 22:31:56 wiz Exp $
#

DISTNAME=	XML-LibXSLT-1.78
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5xlt
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	adam@migus.org
HOMEPAGE=	http://search.cpan.org/dist/XML-LibXSLT/
COMMENT=	Perl interface to the libxslt library
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-XML-LibXML>=1.70:../../textproc/p5-XML-LibXML

USE_TOOLS+=	pkg-config
PERL5_PACKLIST=	auto/XML/LibXSLT/.packlist

.include "../../textproc/libxslt/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
