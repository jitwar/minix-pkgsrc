# $NetBSD$
#
# This Makefile fragment is included by packages that use ImageMagick.
#
# To use this Makefile fragment, simply:
#
# (1) Optionally define BUILDLINK_DEPENDS.ImageMagick to the dependency pattern
#     for the version of ImageMagick desired.
# (2) Include this Makefile fragment in the package Makefile,
# (3) Add ${BUILDLINK_DIR}/include to the front of the C preprocessor's header
#     search path, and
# (4) Add ${BUILDLINK_DIR}/lib to the front of the linker's library search
#     path.

.if !defined(IMAGEMAGICK_BUILDLINK_MK)
IMAGEMAGICK_BUILDLINK_MK=	# defined

BUILDLINK_DEPENDS.ImageMagick?=	ImageMagick>=5.2.8
DEPENDS+=	${BUILDLINK_DEPENDS.ImageMagick}:../../graphics/ImageMagick

BUILDLINK_PREFIX.ImageMagick=	${LOCALBASE}
BUILDLINK_FILES.ImageMagick=	include/Magick++.h
BUILDLINK_FILES.ImageMagick+=	include/Magick++/*
BUILDLINK_FILES.ImageMagick+=	include/magick/*
BUILDLINK_FILES.ImageMagick+=	lib/libMagick.*
BUILDLINK_FILES.ImageMagick+=	lib/libMagick++.*

BUILDLINK_TARGETS.ImageMagick=	ImageMagick-buildlink
BUILDLINK_TARGETS+=		${BUILDLINK_TARGETS.ImageMagick}

pre-configure: ${BUILDLINK_TARGETS.ImageMagick}
ImageMagick-buildlink: _BUILDLINK_USE

.include "../../mk/bsd.buildlink.mk"

.endif	# IMAGEMAGICK_BUILDLINK_MK
