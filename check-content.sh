#!/bin/bash -e

function tarball() {
	FORPACKAGE=$1
	./download.sh ${FORPACKAGE}
	[ -f "files/${FORPACKAGE}.sh" ] && (cd extracted/git && FILES=../../files ../../files/${FORPACKAGE}.sh)
	[ -d "files/${FORPACKAGE}" ] && cp -aR "files/${FORPACKAGE}/." extracted/git
	diff -qr extracted/tarball extracted/git || exit 1
}

source sourcelist.sh
