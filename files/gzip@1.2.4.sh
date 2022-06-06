#!/bin/sh -e
patch -p1 <${FILES}/gzip@1.2.4.patch
rm match.c
