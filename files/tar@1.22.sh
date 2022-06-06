#!/bin/sh -e
patch -p1 <${FILES}/tar@1.22.patch
rm .gitignore */.gitignore
rm gnulib.modules rebox.el README-alpha README-hacking bootstrap.conf
rm ChangeLog.CVS directory bootstrap
rm scripts/xsparse.c scripts/tarcat scripts/tar-snapshot-edit
rm src/makefile.pc src/getoldopt.c src/tcexparg.c src/diffarch.c src/port.c src/read_ffs.c src/open3.c src/testpad.c src/ansi2knr.1 src/arith.c
rm src/msd_dir.c src/msd_dir.h src/gnu.c src/port.h src/open3.h src/configure.in src/version.c src/ansi2knr.c
