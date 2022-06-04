#!/bin/sh -e
rm -R tests/general tests/sort-time
rm .cvsignore */.cvsignore */*/.cvsignore tests/*/range-tests tests/*/failures tests/*/empty-name doc/code-vs-command
rm src/du-tests src/asa.c src/spline.c po/hr.po README-package-renamed-to-coreutils README-valgrind man/help2man
rm tests/rm/unreadable tests/mkdir/concurrent-1 tests/ls/ls-tests tests/ls/Test.pm tests/tail-2/infloop-1 tests/tail-2/fflush tests/mv/i-3 tests/sort/main
rm TODO-private lib/fatal.c lib/fts.c lib/getversion.c lib/setenv.c lib/fatal.h lib/.cppi-disable lib/bcopy.c lib/fts_.h lib/setenv.h lib/.gdb-history
