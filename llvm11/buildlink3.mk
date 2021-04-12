# $NetBSD: buildlink3.mk,v 1.12 2020/10/18 15:51:09 maya Exp $

BUILDLINK_TREE+=	llvm11

.if !defined(LLVM11_BUILDLINK3_MK)
LLVM11_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.llvm11+=	llvm11>=11.1.0
BUILDLINK_PKGSRCDIR.llvm11?=	../../tomtom/llvm11

LLVM11_CONFIG_PATH?=		${BUILDLINK_PREFIX.llvm11}/clang11/bin/llvm-config

pkgbase := llvm11
.include "../../mk/pkg-build-options.mk"
.if ${PKG_BUILD_OPTIONS.llvm11:Mterminfo}
.include "../../mk/terminfo.buildlink3.mk"
.endif

.include "../../devel/zlib/buildlink3.mk"
.endif	# LLVM11_BUILDLINK3_MK

BUILDLINK_TREE+=	-llvm11
