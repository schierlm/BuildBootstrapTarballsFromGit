#!/bin/sh -e
rm -R doc/sources doc/maint benchmark gc-benchmarks benchmark-suite/results examples/compat
rm .gitignore */.gitignore */*/.gitignore .gnuploadrc .x-sc* .dir-locals.el
rm cfg.mk THANKS.guile-vm autogen.sh ANNOUNCE README.guile-vm gdbinit NEWS.guile-vm
rm doc/use-cases.fig doc/hacks.el doc/BUGS doc/goops.mail doc/guile-api.alist doc/use-cases.txt doc/ref/ChangeLog-goops-2008 doc/ref/api-undocumented.texi
rm doc/ref/scheme.dia doc/ref/new-docstrings.texi doc/ref/gds.dia doc/ref/api.txt doc/ref/ChangeLog-guile-doc-ref doc/recipe-guidelines.txt
rm doc/gendocs_template doc/ChangeLog-guile-doc
rm m4/size_max.m4 m4/gnulib-tool.m4 m4/wchar_t.m4 m4/xsize.m4 m4/wint_t.m4 m4/stdint_h.m4 m4/inttypes_h.m4 m4/longlong.m4 m4/lib-ld.m4 m4/lib-prefix.m4
rm m4/gnulib-cache.m4 m4/visibility.m4 m4/iconv.m4 m4/lib-link.m4
rm emacs/*.el emacs/ChangeLog-2008 emacs/guile-emacs.scm
rm module/srfi/Makefile.am  module/sxml/upstream/COPYING.SSAX module/language/objcode.scm module/language/elisp/README
rm module/ice-9/README module/ice-9/arrays.scm
rm test-suite/ChangeLog-2008 test-suite/tests/encoding-utf8.test test-suite/tests/vectors.test test-suite/tests/records.test test-suite/tests/pairs.test
rm test-suite/tests/srfi-18.test test-suite/tests/streams.test test-suite/tests/srfi-17.test test-suite/tests/sort.test test-suite/tests/srfi-98.test
rm test-suite/tests/encoding-iso88597.test test-suite/tests/encoding-escapes.test test-suite/tests/encoding-iso88591.test test-suite/tests/compiler.test
rm lib/ignore-value.h
rm libguile/remaining-docs-needed libguile/ChangeLog-srfi libguile/run-test libguile/guile-snarf.awk.in
