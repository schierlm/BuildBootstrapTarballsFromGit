#!/bin/sh -e
mv src/* lib/* .
rmdir src lib
rm -R ms doc configure.ac
