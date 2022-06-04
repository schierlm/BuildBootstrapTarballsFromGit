#!/bin/sh -e
patch -p1 <../../files/gcc@2.95.3.patch
rm -R libf2c libchill libio libstdc++ libobjc gcc/f gcc/ch gcc/java gcc/objc gcc/cp
