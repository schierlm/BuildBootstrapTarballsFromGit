#!/bin/sh -e
patch -p1 <../../files/make@3.80.patch
rm .cvsignore */.cvsignore *.template ChangeLog.* README.cvs TODO.private .purify maintMakefile loadtest.c
