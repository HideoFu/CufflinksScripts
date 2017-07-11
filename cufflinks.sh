#!/bin/bash

core=$EXPcore
GTF=$EXPgene

cd ..

cufflinks -p $core -g $GTF -o ./cufflinks_results/${EXP1} --library-type fr-secondstrand ${EXP1}.sorted.bam

cd ./Cufflinks
