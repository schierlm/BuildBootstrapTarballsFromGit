# Check for fnmatch - serial 2.

# Copyright (C) 2000-2007, 2009 Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# Autoconf defines AC_FUNC_FNMATCH, but that is obsolescent.
# New applications should use the macros below instead.

# _AC_FUNC_FNMATCH_IF([STANDARD = GNU | POSIX], [CACHE_VAR], [IF-TRUE], [IF-FALSE])
# -------------------------------------------------------------------------
# If a STANDARD compliant fnmatch is found, run IF-TRUE, otherwise
# IF-FALSE.  Use CACHE_VAR.
AC_DEFUN([_AC_FUNC_FNMATCH_IF],
[AC_CACHE_CHECK(
   [for working $1 fnmatch],
   [$2],
  [dnl Some versions of Solaris, SCO, and the GNU C Library
   dnl have a broken or incompatible fnmatch.
   dnl So we run a test program.  If we are cross-compiling, take no chance.
   dnl Thanks to John Oleynick, François Pinard, and Paul Eggert for this test.
   AC_RUN_IFELSE(
      [AC_LANG_PROGRAM(
	 [[#include <fnmatch.h>
	   static int
	   y (char const *pattern, char const *string, int flags)
	   {
	     return fnmatch (pattern, string, flags) == 0;
	   }
	   static int
	   n (char const *pattern, char const *string, int flags)
	   {
	     return fnmatch (pattern, string, flags) == FNM_NOMATCH;
	   }
	 ]],
	 [[char const *Apat = 'A' < '\\\\' ? "[A-\\\\\\\\]" : "[\\\\\\\\-A]";
	   char const *apat = 'a' < '\\\\' ? "[a-\\\\\\\\]" : "[\\\\\\\\-a]";
	   static char const A_1[] = { 'A' - 1, 0 };
	   static char const A01[] = { 'A' + 1, 0 };
	   static char const a_1[] = { 'a' - 1, 0 };
	   static char const a01[] = { 'a' + 1, 0 };
	   static char const bs_1[] = { '\\\\' - 1, 0 };
	   static char const bs01[] = { '\\\\' + 1, 0 };
	   return
	    !(n ("a*", "", 0)
	      && y ("a*", "abc", 0)
	      && n ("d*/*1", "d/s/1", FNM_PATHNAME)
	      && y ("a\\\\bc", "abc", 0)
	      && n ("a\\\\bc", "abc", FNM_NOESCAPE)
	      && y ("*x", ".x", 0)
	      && n ("*x", ".x", FNM_PERIOD)
	      && y (Apat, "\\\\", 0) && y (Apat, "A", 0)
	      && y (apat, "\\\\", 0) && y (apat, "a", 0)
	      && n (Apat, A_1, 0) == ('A' < '\\\\')
	      && n (apat, a_1, 0) == ('a' < '\\\\')
	      && y (Apat, A01, 0) == ('A' < '\\\\')
	      && y (apat, a01, 0) == ('a' < '\\\\')
	      && y (Apat, bs_1, 0) == ('A' < '\\\\')
	      && y (apat, bs_1, 0) == ('a' < '\\\\')
	      && n (Apat, bs01, 0) == ('A' < '\\\\')
	      && n (apat, bs01, 0) == ('a' < '\\\\')
	      && ]m4_if([$1], [GNU],
		   [y ("xxXX", "xXxX", FNM_CASEFOLD)
		    && y ("a++(x|yy)b", "a+xyyyyxb", FNM_EXTMATCH)
		    && n ("d*/*1", "d/s/1", FNM_FILE_NAME)
		    && y ("*", "x", FNM_FILE_NAME | FNM_LEADING_DIR)
		    && y ("x*", "x/y/z", FNM_FILE_NAME | FNM_LEADING_DIR)
		    && y ("*c*", "c/x", FNM_FILE_NAME | FNM_LEADING_DIR)],
		   1))[;]])],
      [$2=yes],
      [$2=no],
      [$2=cross])])
AS_IF([test $$2 = yes], [$3], [$4])
])# _AC_FUNC_FNMATCH_IF


# _AC_LIBOBJ_FNMATCH
# ------------------
# Prepare the replacement of fnmatch.
AC_DEFUN([_AC_LIBOBJ_FNMATCH],
[AC_REQUIRE([AC_FUNC_ALLOCA])dnl
AC_REQUIRE([AC_TYPE_MBSTATE_T])dnl
AC_CHECK_DECLS([isblank], [], [], [#include <ctype.h>])
AC_CHECK_FUNCS_ONCE([btowc isblank iswctype mbsrtowcs mempcpy wmemchr wmemcpy wmempcpy])
AC_CHECK_HEADERS_ONCE([wctype.h])
AC_LIBOBJ([fnmatch])
FNMATCH_H=fnmatch.h
])# _AC_LIBOBJ_FNMATCH


AC_DEFUN([gl_FUNC_FNMATCH_POSIX],
[
  FNMATCH_H=
  _AC_FUNC_FNMATCH_IF([POSIX], [ac_cv_func_fnmatch_posix],
		      [rm -f lib/fnmatch.h],
		      [_AC_LIBOBJ_FNMATCH])
  if test $ac_cv_func_fnmatch_posix != yes; then
    dnl We must choose a different name for our function, since on ELF systems
    dnl a broken fnmatch() in libc.so would override our fnmatch() if it is
    dnl compiled into a shared library.
    AC_DEFINE([fnmatch], [posix_fnmatch],
      [Define to a replacement function name for fnmatch().])
  fi
  AC_SUBST([FNMATCH_H])
])


AC_DEFUN([gl_FUNC_FNMATCH_GNU],
[
  dnl Persuade glibc <fnmatch.h> to declare FNM_CASEFOLD etc.
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])

  FNMATCH_H=
  _AC_FUNC_FNMATCH_IF([GNU], [ac_cv_func_fnmatch_gnu],
		      [rm -f lib/fnmatch.h],
		      [_AC_LIBOBJ_FNMATCH])
  if test $ac_cv_func_fnmatch_gnu != yes; then
    dnl We must choose a different name for our function, since on ELF systems
    dnl a broken fnmatch() in libc.so would override our fnmatch() if it is
    dnl compiled into a shared library.
    AC_DEFINE([fnmatch], [gnu_fnmatch],
      [Define to a replacement function name for fnmatch().])
  fi
  AC_SUBST([FNMATCH_H])
])
