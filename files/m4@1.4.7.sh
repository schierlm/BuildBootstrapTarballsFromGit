#!/bin/sh -e
patch -p1 <${FILES}/m4@1.4.7.patch
rm .cvsignore commit */.cvsignore HACKING
