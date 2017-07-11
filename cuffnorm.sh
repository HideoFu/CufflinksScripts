#!/bin/bash

# with arguments "sample1 sample2 ...", compare all.
# if a sample has multiple bam files, ',' is required between bam filenames.
# (Can't handle with this script)

cd ..

for INDEX in $*
do
    list="$list./cuffquant_results/${INDEX}/abundances.cxb "
done

cuffnorm -p $core -o ./cuffnorm_results/all ./merged_asm/merged.gtf $list

