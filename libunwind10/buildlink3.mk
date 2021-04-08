# $NetBSD: buildlink3.mk,v 1.8 2019/12/29 15:31:23 adam Exp $

BUILDLINK_TREE+=	libunwind10

.if !defined(LIBUNWIND10_BUILDLINK3_MK)
LIBUNWIND_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libunwind10+=	libunwind10>=10.0.1
BUILDLINK_PKGSRCDIR.libunwind10?=		../../tomtom/libunwind10

.include "../../tomtom/llvm10/buildlink3.mk"
.endif	# LIBUNWIND10_BUILDLINK3_MK

BUILDLINK_TREE+=	-libunwind10
