# $NetBSD: buildlink3.mk,v 1.7 2018/12/09 20:04:38 adam Exp $

BUILDLINK_TREE+=	llvm7

.if !defined(LLVM7_BUILDLINK3_MK)
LLVM7_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.llvm7+=	llvm7>=7.0.0
BUILDLINK_PKGSRCDIR.llvm7?=	../../tomtom/llvm7

LLVM7_CONFIG_PATH?=		${BUILDLINK_PREFIX.llvm7}/clang7/bin/llvm-config

pkgbase := llvm7
.include "../../mk/pkg-build-options.mk"
.if !empty(PKG_BUILD_OPTIONS.llvm7:Mterminfo)
.include "../../mk/terminfo.buildlink3.mk"
.endif

.include "../../devel/zlib/buildlink3.mk"
.endif	# LLVM7_BUILDLINK3_MK

BUILDLINK_TREE+=	-llvm7
