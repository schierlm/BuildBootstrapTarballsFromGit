#!/bin/sh -e
patch -p1 <${FILES}/sed@4.1.4.patch
rm .gitignore po/.gitignore testsuite/eval.in2 testsuite/tst-regex.c
