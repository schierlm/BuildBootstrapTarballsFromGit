#!/bin/bash

PACKAGE=${1:-all}

function tarball() {
	FORPACKAGE=$1
	[ "${PACKAGE}" == "${FORPACKAGE}" -o "${PACKAGE}" == "all" ] || return
	UNTAR=$2
	TARBALLPATH=$3
	TARBALLFILE=$4
	URL=$5
	BRANCH=$6
	COMMIT=$7

	if [ ! -f "cache/${TARBALLFILE}" ]; then
		wget -P cache -nc "${TARBALLPATH}/${TARBALLFILE}"
	fi
	if [ ! -d "cache/$COMMIT" ]; then
		echo "Retrieving from ${URL}..."
		mkdir -p "cache/${COMMIT}"
		cd "cache/${COMMIT}"
		git init --initial-branch=main
		git remote add origin "${URL}"
		git fetch --depth 1 origin "${BRANCH}"
		git checkout --detach FETCH_HEAD
		cd ../..
		HASH=$(git -C "cache/${COMMIT}" rev-parse --verify --quiet HEAD)
		if [ "${COMMIT}" != "${HASH}" ]; then
			echo "Invalid hash ${HASH} (expected ${COMMIT})."
			rm -rf "cache/${COMMIT}"
			exit 1
		fi
		rm -R "cache/${COMMIT}/.git"
	fi
	[ "$PACKAGE" == "all" ] && return
	cp -aR "cache/${COMMIT}/." "extracted/git"
	tar x${UNTAR} -C extracted/tmp -f "cache/${TARBALLFILE}"
	mv extracted/tmp/* extracted/tarball
}

rm -rf extracted
mkdir -p extracted/git extracted/tmp cache
echo "Retrieving ${PACKAGE}..."
source sourcelist.sh
echo "Retrieving done."
