#!/bin/bash

core=$EXPcore

cd ..

cuffquant -p $core -o ./cuffquant_results/${EXP1} --library-type fr-secondstrand ./merged_asm/merged.gtf ${EXP1}.sorted.bam 

cd ./Cufflinks
