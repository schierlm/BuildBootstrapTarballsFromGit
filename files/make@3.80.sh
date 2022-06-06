#!/bin/sh -e
dos2unix w32/include/sub_proc.h
patch -p1 <${FILES}/make@3.80.patch
unix2dos w32/include/sub_proc.h
rm .cvsignore */.cvsignore *.template ChangeLog.* README.cvs TODO.private .purify maintMakefile loadtest.c
