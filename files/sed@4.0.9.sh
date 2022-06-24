#!/bin/bash -e
mkdir -p intl
cp ${FILES}/sed@4.1.4/config/{mdate-sh,missing} config
cp ${FILES}/sed@4.1.4/intl/{locale.alias,ref-{add,del}.sin,{dcgettext,dcngettext,dgettext,dngettext,explodename,finddomain,gettext,intl-compat,ngettext,textdomain}.c} intl
patch -p1 <${FILES}/sed@4.1.4.patch
patch -p1 <${FILES}/sed@4.0.9-from-4.1.4.patch
rm ChangeLog.orig config/stdbool.m4 .gitignore lib/stdbool_.h
rm po/af.po po/.gitignore po/LINGUAS po/Makevars
rm README-alpha sed/mbcs.c
rm testsuite/bsd.good testsuite/bsd.sh testsuite/eval.in2 testsuite/noeolw.1good testsuite/noeolw.2good testsuite/noeolw.good
rm testsuite/noeolw.sed testsuite/recall2.good testsuite/recall2.inp testsuite/recall2.sed testsuite/tst-regex2.c testsuite/tst-regex.c
