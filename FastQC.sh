#!/bin/bash

#Checking the quality of the sequencing library
#Dependencies:FastQC

for fn in $(find -name '*.fq'); do
    base=$(basename $fn "*.fq")
    fastqc -o FastQC_output/${base}.fq -f fastq $fn
    echo "fastqc -o FastQC_output/${base}.fq -f fastq $fn"
echo "Done"
date
