#!/bin/sh -e
patch -p1 <../../files/binutils@2.20.1a.patch
rm .cvsignore */*/.cvsignore COPYING.LIBGLOSS etc/add-log.* COPYING.NEWLIB
