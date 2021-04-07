# $NetBSD: buildlink3.mk,v 1.3 2019/12/29 15:31:21 adam Exp $

BUILDLINK_TREE+=	compiler-rt10

.if !defined(COMPILER10_RT_BUILDLINK3_MK)
COMPILER_RT10_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.compiler-rt10+=	compiler-rt10>=10.0.1
BUILDLINK_PKGSRCDIR.compiler-rt10?=	../../tomtom/compiler-rt10

.include "../../tomtom/llvm10/buildlink3.mk"
.endif	# COMPILER_RT10_BUILDLINK3_MK

BUILDLINK_TREE+=	-compiler-rt10
