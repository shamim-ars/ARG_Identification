#!/bin/bash
#Trimming adapter and removing low quality reads
#Dependencies=trimmomatic
program_dir='/shared_resource/NGS_analysis/trimmomatic/Trimmomatic-0.38'

for fn in $(find -name '*.fq'); do
    base=$(basename $fn "*.fq")
    java -jar ${program_dir}/trimmomatic-0.38.jar SE -phred33 -threads 8 $fn Trimmed_files/${base}_trimmed.fq ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:50
    echo "java -jar ${program_dir}/trimmomatic-0.38.jar SE -phred33 -threads 8 $fn Trimmed_files/${base}_trimmed.fq ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:50"

echo "Trimming finished"
date
