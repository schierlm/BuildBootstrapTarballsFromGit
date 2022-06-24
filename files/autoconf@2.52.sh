#!/bin/sh -e
patch -p1 <${FILES}/autoconf@2.52.patch
rm -R bin lib
rm .cvsignore */.cvsignore README-alpha autom4te.in
