#!/bin/sh -e
patch <../../files/binutils@2.14.patch
rm -R contrib COPYING.LIBGLOSS COPYING.NEWLIB MAINTAINERS .cvsignore etc/add-log.* ChangeLog etc/ChangeLog README-maintainer-mode
