#!/bin/bash

export EXPcore=6
export EXPgene=/mnt/nas/public/Homo_sapiens/NCBI/build37.2/Annotation/genes.gtf

touch gtf.txt

for INDEX in $*
do
    export EXP1=$INDEX
    
    # switch paired reads
    if [ -e ../${INDEX}_2.fastq ] ; then
        sh ./galore-paired.sh
        sh ./hisat2-paired.sh
    else
        sh ./galore.sh
        sh ./hisat2.sh
    fi
    
    sh ./cufflinks.sh
    echo "./cufflinks_results/${INDEX}/transcripts.gtf" >> ../gtf.txt
done

sh ./cuffmerge.sh

for INDEX in $*
do
    export EXP1=$INDEX
    sh ./cuffquant.sh
done
