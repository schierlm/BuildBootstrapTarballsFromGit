#!/bin/sh -e
patch -p1 <../../files/glibc@2.2.5.patch
rm -R linuxthreads linuxthreads_db posix/glob nss/nss_db
rm .cvsignore */.cvsignore */*/.cvsignore */*/*/.cvsignore */*/*/*/*/.cvsignore README.template
rm sysdeps/powerpc/test-arithf.c sysdeps/powerpc/test-arith.c sysdeps/unix/sysv/linux/x86_64/sys/debugreg.h
rm manual/libcbook.texi README-alpha
rm nss/db-Makefile nss/makedb.c
