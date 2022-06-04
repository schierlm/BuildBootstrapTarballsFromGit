#!/bin/sh -e
patch -p1 <../../files/gzip@1.2.4.patch
rm match.c
