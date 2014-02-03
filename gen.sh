#!/bin/bash

## how to deal with the / and & in a more general way?

ori_name="./src/atomic_"$1
src_name=${ori_name}.cc

i=0
for binop in "+" "*" "-" "^" "|" "<<" ">>"
do
    tmp_name=${ori_name}${i}.c
    cp ${src_name} ${tmp_name}
    sed -i "s/OP_TARGET/${binop}/" $tmp_name
    i=$((i+1))
done

# /
tmp_name=${ori_name}${i}.c
cp ${src_name} ${tmp_name}
sed -i "s/OP_TARGET/\//" $tmp_name
i=$((i+1))
# &
tmp_name=${ori_name}${i}.c
cp ${src_name} ${tmp_name}
sed -i "s/OP_TARGET/\&/" $tmp_name
