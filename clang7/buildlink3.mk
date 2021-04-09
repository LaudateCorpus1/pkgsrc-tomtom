# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.17.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.clang?=	build

BUILDLINK_TREE+=	clang

.if !defined(CLANG_BUILDLINK3_MK)
CLANG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.clang+=	clang>=7.0.1nb1
BUILDLINK_PKGSRCDIR.clang?=	../../lang/clang7

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../lang/compiler-rt/buildlink3.mk"
#.include "../../lang/libcxx/buildlink3.mk"
#.include "../../lang/libcxxabi/buildlink3.mk"
#.include "../../lang/libunwind/buildlink3.mk"
#.include "../../devel/googletest/buildlink3.mk"
#.include "../../textproc/libxml2/buildlink3.mk"
#.include "../../devel/zlib/buildlink3.mk"
#.include "../../lang/llvm/buildlink3.mk"
.endif	# CLANG_BUILDLINK3_MK

BUILDLINK_TREE+=	-clang
