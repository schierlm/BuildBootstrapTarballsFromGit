#!/bin/sh -e
patch -p1 <../../files/grep@2.4.patch
rm .cvsignore tests/formatere.awk tests/spencer2.tests tests/formatbre.awk tests/tests tests/spencer2.sh
rm  djgpp/src.mak djgpp/intl.mak djgpp/tests.mak djgpp/main.mak djgpp/po.mak djgpp/po2tbl.sed djgpp/config.h
