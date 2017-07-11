#!/bin/bash

core=$EXPcore
GTF=$EXPgene

cd ..

cuffmerge -p $core -g $GTF gtf.txt

cd ./Cufflinks

#output: merged.gtf
