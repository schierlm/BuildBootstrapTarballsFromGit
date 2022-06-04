#!/bin/sh -e
patch -p1 <../../files/make@3.82.patch
rm .cvsignore */.cvsignore *.template ChangeLog.* README.cvs TODO.private prepare_w32.bat .purify maintMakefile
