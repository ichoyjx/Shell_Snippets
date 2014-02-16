#!/bin/bash
#
# generate a new CHiLL script using the transformation parameters
# this script gets the code transformation parameters as an argument.
# This generic (MM) example has five parameters: L1, L2, L3, U1, T1

L1=$1
L2=$2
#L3=$3
U1=$3
T1=$4

echo "
source: jacobi_fun.sp2
format: suif
procedure: 0
loop: 0

permute([$L1,$L2])

tile(0,1,$T1)
unroll(0,1,$U1)

" > jacobi_fun.script;
