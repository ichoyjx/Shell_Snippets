#!/bin/bash
# This is the general process of using CHiLL
scc -V -.spd gemm.f
porky -forward-prop gemm.spd gemm.sp1
porky -dead-code gemm.sp1 gemm.sp2
chill gemm.script
s2f gemm.lxf > gemm.modified.f 
