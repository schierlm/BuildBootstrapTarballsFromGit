#!/bin/sh -e
patch -p1 <${FILES}/mpfr@2.4.2.patch
rm -R mbench tests/data 
rm algorithms.bib algorithms.tex check_inits_clears coverage cputime.h div-short.c faq.xsl .gitignore m4/.gitignore mpfrlint
rm nightly-test patch-aclocal-icc prepare README.dev replace_all tests/.gitignore tests/RRTest.c update-faq update-patchv update-version
