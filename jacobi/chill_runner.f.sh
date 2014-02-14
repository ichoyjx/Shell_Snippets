#!/bin/bash
# This is the general process of using CHiLL
scc -V -.spd ${1}.f
porky -forward-prop ${1}.spd ${1}.sp1
porky -dead-code ${1}.sp1 ${1}.sp2
chill ${1}.script
s2f ${1}.lxf > jacobi_con.f 
cp jacobi_main.f mm.f
cat jacobi_con.f >> mm.f
