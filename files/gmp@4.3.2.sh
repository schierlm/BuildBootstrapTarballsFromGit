#!/bin/sh -e
patch -p1 <${FILES}/gmp@4.3.2.patch
rm .bootstrap gen-trialdivtab.c .hgignore .hgtags mpf/clears.c mpf/inits.c mpn/alpha/com_n.asm mpn/alpha/ev5/diveby3.asm mpn/arm/README
rm mpn/generic/bdiv_q_1.c mpn/generic/bdiv_q.c mpn/generic/bdiv_qr.c mpn/generic/copyd.c mpn/generic/copyi.c mpn/generic/dcpi1_bdiv_q.c
rm mpn/generic/dcpi1_bdiv_qr.c mpn/generic/dcpi1_divappr_q.c mpn/generic/dcpi1_div_q.c mpn/generic/dcpi1_div_qr.c mpn/generic/invertappr.c
rm mpn/generic/logops_n.c mpn/generic/mullo_basecase.c mpn/generic/mullo_n.c mpn/generic/mulmod_bnm1.c mpn/generic/perfpow.c mpn/generic/redc_1_sec.c
rm mpn/generic/redc_n.c mpn/generic/remove.c mpn/generic/sbpi1_bdiv_q.c mpn/generic/sbpi1_bdiv_qr.c mpn/generic/sbpi1_divappr_q.c
rm mpn/generic/sbpi1_div_q.c mpn/generic/sbpi1_div_qr.c mpn/generic/sqr_n.c mpn/generic/toom43_mul.c mpn/generic/toom52_mul.c
rm mpn/generic/toom_eval_dgr3_pm1.c mpn/generic/toom_eval_dgr3_pm2.c mpn/generic/toom_eval_pm1.c mpn/generic/toom_eval_pm2.c
rm mpn/generic/toom_eval_pm2exp.c mpn/generic/toom_interpolate_6pts.c mpn/generic/trialdiv.c mpn/generic/zero.c mpn/pa64/aors_n.asm
rm -R mpn/powerpc64/mode64/p3 mpn/powerpc64/mode64/p4 mpn/powerpc64/mode64/p5 mpn/sparc64/ultrasparc34 mpn/x86/atom mpn/x86_64/corei mpn/x86_64/fat
rm -R mpn/x86_64/nano
rm mpn/x86/fat/mod_1.c mpn/x86/invert_limb.asm mpn/x86/k7/mod_1_4.asm mpn/x86/p6/sse2/mod_1_4.asm mpn/x86/pentium4/sse2/mod_1_4.asm 
rm mpn/x86_64/aorrlsh1_n.asm mpn/x86_64/aorrlsh2_n.asm mpn/x86_64/bdiv_q_1.asm mpn/x86_64/gcd_1.asm mpn/x86_64/mod_1_4.asm 
rm mpn/x86_64/rsh1aors_n.asm mpq/clears.c mpq/inits.c mpz/clears.c mpz/inits.c nextprime.c README.HG tests/devel/addmul_N.c tests/devel/addsub_n_2.c
rm tests/devel/addsub_n.c tests/devel/mul_N.c tests/mpf/t-eq.c tests/mpn/t-bdiv.c tests/mpn/t-mullo.c tests/mpn/t-mulmod_bnm1.c tests/mpn/toom-shared.h
rm tests/mpn/t-toom22.c tests/mpn/t-toom32.c tests/mpn/t-toom33.c tests/mpn/t-toom42.c tests/mpn/t-toom43.c tests/mpn/t-toom44.c tests/mpn/t-toom52.c
rm tests/mpn/t-toom53.c tests/mpn/t-toom62.c tests/mpz/t-remove.c tune/gcd_accel.c tune/gcd_bin.c
