#!/bin/bash

for ib in $(seq 0 1 99);
# for ib in 0;
do
    submit_file=submit_Bw_"$ib".sh;
    cp submit_template.sh $submit_file;
    sed -i "s/##IB/$ib/g" $submit_file;
    sbatch $submit_file;
    rm $submit_file;
done
