# $NetBSD: buildlink3.mk,v 1.12 2020/10/18 15:51:09 maya Exp $

BUILDLINK_TREE+=	llvm10

.if !defined(LLVM10_BUILDLINK3_MK)
LLVM10_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.llvm10+=	llvm10>=10.0.1
BUILDLINK_PKGSRCDIR.llvm10?=	../../tomtom/llvm10

LLVM10_CONFIG_PATH?=		${BUILDLINK_PREFIX.llvm10}/clang10/bin/llvm-config

pkgbase := llvm10
.include "../../mk/pkg-build-options.mk"
.if ${PKG_BUILD_OPTIONS.llvm10:Mterminfo}
.include "../../mk/terminfo.buildlink3.mk"
.endif

.include "../../devel/zlib/buildlink3.mk"
.endif	# LLVM10_BUILDLINK3_MK

BUILDLINK_TREE+=	-llvm10
