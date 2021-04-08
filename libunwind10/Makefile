# $NetBSD: Makefile,v 1.24 2020/10/20 06:34:23 jperkin Exp $

.include "../../tomtom/llvm10/version.mk"

DISTNAME=	libunwind-${LLVM_VERSION}.src
PKGNAME=	libunwind10-${LLVM_VERSION}
PKGREVISION=	1
CATEGORIES=	lang devel

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	http://libunwind.llvm.org/
COMMENT=	LLVM libunwind
LICENSE=	apache-2.0

CONFIGURE_DIRS=		${WRKDIR}/build

USE_CMAKE=		yes
USE_LANGUAGES=		c c++11
USE_TOOLS+=		pax
GCC_REQD+=		4.8
SSP_SUPPORTED=		no

CMAKE_INSTALL_PREFIX=   ${PREFIX}/clang10
CMAKE_ARGS+=	-DCMAKE_BUILD_TYPE=Release
CMAKE_ARGS+=	-DCMAKE_C_COMPILER=${CC:Q}
CMAKE_ARGS+=	-DCMAKE_CXX_COMPILER=${CXX:Q}

CMAKE_ARG_PATH=	${WRKSRC}

INSTALLATION_DIRS=	include

post-extract:
	${MKDIR} ${WRKDIR}/build

post-install:
	${RM} -f ${WRKSRC}/include/__libunwind_config.h.orig
	cd ${WRKSRC}/include && ${PAX} -rw . ${DESTDIR}${PREFIX}/clang10/include

BUILDLINK_DEPMETHOD.llvm=	build
.include "../../tomtom/llvm10/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
