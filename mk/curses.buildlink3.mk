# $NetBSD: curses.buildlink3.mk,v 1.2 2004/03/18 09:12:13 jlam Exp $
#
# This file should be included by Makefiles for packages that use curses.
# If a system curses isn't available, then add a dependency on ncurses.
#
# If a package genuinely requires ncurses, then it should directly include
# ncurses/buildlink3.mk instead of this file in the package Makefile.

.if !exists(/usr/include/curses.h) && \
    !exists(/usr/include/ncurses.h)
.  include "../../devel/ncurses/buildlink3.mk"
.else

# XXX this is ugly, but needed to get the BUILDLINK_TRANSFORM from builtin.mk;
# on Interix, libncurses is static yet libcurses (also ncurses) is shared
.  include "../../mk/bsd.prefs.mk"
.  if ${OPSYS} == "Interix"
.    include "../../devel/ncurses/buildlink3.mk"
.  endif

.endif
