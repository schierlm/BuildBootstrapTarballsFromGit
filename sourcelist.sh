# Sourced from other scripts; lists all git repositories and tarballs to compare

# grep-2.0 is not available in a git repo, use grep-2.4 instead
# sed-1.18 and sed-4.0.6 are not either, use sed-4.1.4 instead and patch it down to sed-4.0.9
# branch for gmp-4.3.2 is not available, pick some revision from trunk where ChangeLog looks similar and patch it

tarball bash@2.05b z https://mirrors.kernel.org/gnu/bash bash-2.05b.tar.gz https://git.savannah.gnu.org/git/bash.git devel-base-dist 7117c2d221b2aed4ede8600f6a36b7c1454b4f55
tarball bash@4.4 z https://mirrors.kernel.org/gnu/bash bash-4.4.tar.gz https://git.savannah.gnu.org/git/bash.git bash-4.4 a0c0a00fc419b7bc08202a79134fcd5bc0427071
tarball binutils@2.14 j https://mirrors.kernel.org/gnu/binutils binutils-2.14.tar.bz2 https://sourceware.org/git/binutils-gdb.git binutils-2_14 a6c882349c20eb4702f2d4c7730b8594a10b9100
tarball binutils@2.20.1a j https://mirrors.kernel.org/gnu/binutils binutils-2.20.1a.tar.bz2 https://sourceware.org/git/binutils-gdb.git binutils-2_20_1 7f56ba6d9c7a2c4b27f54b3cabcb2524611937d3
tarball bzip2@1.0.8 z https://sourceware.org/pub/bzip2 bzip2-1.0.8.tar.gz https://sourceware.org/git/bzip2.git bzip2-1.0.8 6a8690fc8d26c815e798c588f796eabe9d684cf0
tarball coreutils@5.0 j https://mirrors.kernel.org/gnu/coreutils coreutils-5.0.tar.bz2 https://git.savannah.gnu.org/git/coreutils.git v5.0 65d52b65f68b873e8c79ab99e843f13aee466ac3
tarball gawk@3.0.0 z https://mirrors.kernel.org/gnu/gawk gawk-3.0.0.tar.gz https://git.savannah.gnu.org/git/gawk.git gawk-3.0.0 8c042f99cc7465c86351d21331a129111b75345d
tarball gawk@3.0.4 z https://mirrors.kernel.org/gnu/gawk gawk-3.0.4.tar.gz https://git.savannah.gnu.org/git/gawk.git gawk-3.0.4 f20ab7c3039a4023f41372bfe4bde3b16d481df7
tarball gawk@3.1.8 z https://mirrors.kernel.org/gnu/gawk gawk-3.1.8.tar.gz https://git.savannah.gnu.org/git/gawk.git gawk-3.1.8 00ef0423acd97cb964a2bae54c93a03a8ab50e5e
tarball gcc@2.95.3 z https://mirrors.kernel.org/gnu/gcc/gcc-2.95.3 gcc-core-2.95.3.tar.gz https://gcc.gnu.org/git/gcc.git releases/gcc-2.95.3 7f236610e99c7a11fb18f056b6446b3c7c40979c
tarball gcc@4.6.4 j https://mirrors.kernel.org/gnu/gcc/gcc-4.6.4 gcc-4.6.4.tar.bz2 https://gcc.gnu.org/git/gcc.git releases/gcc-4.6.4 66cc0b3cf5bcd0366200064192b544c9274144b3
tarball gcc@4.9.4 j https://mirrors.kernel.org/gnu/gcc/gcc-4.9.4 gcc-4.9.4.tar.bz2 https://gcc.gnu.org/git/gcc.git releases/gcc-4.9.4 4f18db57daffc62a373e30d93c9552f2b94adf09
tarball glibc@2.2.5 z https://mirrors.kernel.org/gnu/glibc glibc-2.2.5.tar.gz https://sourceware.org/git/glibc.git glibc-2.2.5 7d04edce9211ccd0ae06cd19d3cc2098d8891935
tarball glibc@2.16.0 J https://mirrors.kernel.org/gnu/glibc glibc-2.16.0.tar.xz https://sourceware.org/git/glibc.git glibc-2.16.0 75f0d3040a2c2de8842bfa7a09e11da1a73e17d0
tarball grep@2.4 z https://mirrors.kernel.org/gnu/grep grep-2.4.tar.gz https://github.com/zevweiss/grep/ e518282eb052be581d6e5a1708ea89bb10c9002d e518282eb052be581d6e5a1708ea89bb10c9002d
tarball guile@2.0 z https://mirrors.kernel.org/gnu/guile guile-2.0.0.tar.gz https://git.savannah.gnu.org/git/guile.git v2.0.0 958a28e9fec33ebb4673294308a82ccd18cc6071
tarball gzip@1.2.4 z https://mirrors.kernel.org/gnu/gzip gzip-1.2.4.tar.gz https://github.com/Distrotech/gzip f8df0e2e19e693772e8b826567092911373624a2 f8df0e2e19e693772e8b826567092911373624a2
tarball make@3.80 j https://mirrors.kernel.org/gnu/make make-3.80.tar.bz2 https://git.savannah.gnu.org/git/make.git 3.80 d1d9c0274bf49bac2cf5293caef54f474cced796
tarball make@3.82 j https://mirrors.kernel.org/gnu/make make-3.82.tar.bz2 https://git.savannah.gnu.org/git/make.git 3.82 95f1a32d27eef91a8a037522467d7060e7da2624
tarball mes@0.24 z https://mirrors.kernel.org/gnu/mes mes-0.24.tar.gz https://git.savannah.gnu.org/git/mes.git v0.24 a36eb013f8f2dc78e14c7ad1d6f5faa360294780
tarball nyacc@1.00.2 z https://download.savannah.gnu.org/releases/nyacc nyacc-1.00.2.tar.gz https://git.savannah.gnu.org/git/nyacc.git V1.00.2 06a0985332cfbc76e759da50d228d5aa01b4f6a9
tarball patch@2.5.9 z https://mirrors.kernel.org/gnu/patch patch-2.5.9.tar.gz https://git.savannah.gnu.org/git/patch.git v2.5.9 e930d168adfce7a64caf4852892f43deacd94fc5
tarball sed@4.0.9 z https://mirrors.kernel.org/gnu/sed sed-4.0.9.tar.gz https://github.com/mirror/sed 5b8a41362041bb4c950488745694f1242f611e66 5b8a41362041bb4c950488745694f1242f611e66
tarball sed@4.1.4 z https://mirrors.kernel.org/gnu/sed sed-4.1.4.tar.gz https://github.com/mirror/sed 5b8a41362041bb4c950488745694f1242f611e66 5b8a41362041bb4c950488745694f1242f611e66
tarball tar@1.22 z https://mirrors.kernel.org/gnu/tar tar-1.22.tar.gz https://git.savannah.gnu.org/git/tar.git release_1_22 9077de9fa91886697a1294891a8d4e6d17fcd30b
tarball tcc@0.9.27 j https://download.savannah.gnu.org/releases/tinycc tcc-0.9.27.tar.bz2 https://git.savannah.gnu.org/git/tinycc.git release_0_9_27 d348a9a51d32cece842b7885d27a411436d7887b
tarball xz@5.0.0 j https://tukaani.org/xz xz-5.0.0.tar.bz2 https://github.com/xz-mirror/xz v5.0.0 e45929260cd902036efd40c5610a8d0a50d5712b
tarball diffutils@2.7 z https://mirrors.kernel.org/gnu/diffutils diffutils-2.7.tar.gz https://git.savannah.gnu.org/git/diffutils.git v2.7 4e44a14836a44835c63c0534b5895ac47d632759
tarball findutils@4.2.33 z https://mirrors.kernel.org/gnu/findutils findutils-4.2.33.tar.gz https://git.savannah.gnu.org/git/findutils.git/ FINDUTILS_4_2_33-1 24c3aca21d04d3c27b9ec203223dd9127e491c4c
tarball m4@1.4.7 j https://mirrors.kernel.org/gnu/m4 m4-1.4.7.tar.bz2 https://git.savannah.gnu.org/git/m4.git release-1.4.7 25fde5b6c53074e6f6e4da087bb187cc3e5db47c
tarball autoconf@2.52 j https://mirrors.kernel.org/gnu/autoconf autoconf-2.52.tar.bz2 https://git.savannah.gnu.org/git/autoconf.git AUTOCONF-2.52 7131306a64b59b0244ef069db87da5274d6a31c7
tarball automake@1.6.3 j https://mirrors.kernel.org/gnu/automake automake-1.6.3.tar.bz2 https://git.savannah.gnu.org/git/automake.git Release-1-6-3 0a3e51265335d92f216db36654bb58b05fdb7097
tarball gmp@4.3.2 j https://mirrors.kernel.org/gnu/gmp gmp-4.3.2.tar.bz2 https://github.com/ShiftMediaProject/gmp 4aab98ec08ada3c573111f30bbd58cacca013b8d 4aab98ec08ada3c573111f30bbd58cacca013b8d
tarball mpfr@2.4.2 j https://mirrors.kernel.org/gnu/mpfr mpfr-2.4.2.tar.bz2 https://gitlab.inria.fr/mpfr/mpfr.git 2.4.2 ea4078d2806dc1cab44fba6e9b26df6b6e8a09b6
tarball mpc@1.0.3 z https://mirrors.kernel.org/gnu/mpc mpc-1.0.3.tar.gz https://gitlab.inria.fr/mpc/mpc.git 1.0.3 7fe6670726ccccbcddf2f0f8f487bc100a367564
