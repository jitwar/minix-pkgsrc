# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.amarok
PKG_SUPPORTED_OPTIONS=	mysql pgsql

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mmysql)
CONFIGURE_ARGS+=	--enable-mysql
.include "../../mk/mysql.buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mpgsql)
CONFIGURE_ARGS+=	--enable-postgresql
.include "../../mk/pgsql.buildlink3.mk"
.endif
