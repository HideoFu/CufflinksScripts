#!/bin/bash

export EXPcore=6
export EXPgene=/mnt/nas/public/Homo_sapiens/NCBI/build37.2/Annotation/genes.gtf

touch gtf.txt

for INDEX in $*
do
    export EXP1=$INDEX
    
    sh ./cufflinks.sh
    echo "./cufflinks_results/${INDEX}/transcripts.gtf" >> ../gtf.txt
done

sh ./cuffmerge.sh

for INDEX in $*
do
    export EXP1=$INDEX
    sh ./cuffquant.sh
done
