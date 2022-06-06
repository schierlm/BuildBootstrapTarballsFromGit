#!/bin/sh -e
dos2unix w32/include/sub_proc.h
patch -p1 <${FILES}/make@3.82.patch
rm .cvsignore */.cvsignore *.template ChangeLog.* README.cvs TODO.private prepare_w32.bat .purify maintMakefile
