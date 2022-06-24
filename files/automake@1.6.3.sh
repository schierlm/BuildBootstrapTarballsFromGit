#!/bin/bash -e
patch -p1 <${FILES}/automake@1.6.3.patch
rm .cvsignore */.cvsignore */*/.cvsignore HACKING README-alpha lib/am/comp-vars.am
rm tests/{acouttbs2,badopt,extra2,install}.test
