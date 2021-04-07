# $NetBSD: buildlink3.mk,v 1.13 2020/11/05 09:06:56 ryoon Exp $

BUILDLINK_TREE+=	clang10

.if !defined(CLANG10_BUILDLINK3_MK)
CLANG10_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.clang10+=	clang10>=10.0.1
BUILDLINK_ABI_DEPENDS.clang10?=	clang10>=10.0.1
BUILDLINK_PKGSRCDIR.clang10?=	../../tomtom/clang10

.include "../../textproc/libxml2/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../lang/llvm/buildlink3.mk"
.endif	# CLANG10_BUILDLINK3_MK

BUILDLINK_TREE+=	-clang10
