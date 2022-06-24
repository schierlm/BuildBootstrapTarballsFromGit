#!/bin/sh -e
patch -p1 <${FILES}/findutils@4.2.33.patch
rm -R intl
rm .cvsignore */.cvsignore */*/.cvsignore README-CVS
rm find/testsuite/excuses.txt lib/strspn.c  po/fetch-po-files po/Makevars.template
