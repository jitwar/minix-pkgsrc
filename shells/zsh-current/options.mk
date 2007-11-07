# $NetBSD: options.mk,v 1.1 2006/03/11 13:20:15 uebayasi Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.zsh
PKG_SUPPORTED_OPTIONS=	zsh-multibyte
PKG_SUGGESTED_OPTIONS=

.if !defined(ZSH_STATIC)
PKG_SUPPORTED_OPTIONS+=	pcre
.endif

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mzsh-multibyte)
CONFIGURE_ARGS+=	--enable-multibyte
.endif

.if !empty(PKG_OPTIONS:Mpcre)
PCRE_CONFIG=		${BUILDLINK_PREFIX.pcre}/bin/pcre-config
CONFIGURE_ARGS+=	--with-pcre
CONFIGURE_ENV+=		PCRE_CONFIG=${PCRE_CONFIG:Q}
.  include "../../devel/pcre/buildlink3.mk"
.endif
