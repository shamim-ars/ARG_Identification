#!/bin/bash
#SBATCH --job-name="samtools_bam_to_bam" #name of the job submitted
#SBATCH -p short #name of the queue you are submitting job to
#SBATCH -N 1 #number of nodes in this job
#SBATCH -n 40 #number of cores/tasks in this job, you get all 20 cores with 2 threads per core with hyperthreading
#SBATCH -t 48:00:00 #time allocated for this job hours:mins:seconds
#SBATCH -o "stdout.%j.%N" # standard out %j adds job number to outputfile name and %N adds the node name
#SBATCH -e "stderr.%j.%N" #optional but it prints our standard error

module load samtools

samtools view -bS OF2.sam > OF2.bam
samtools view -bS OF4.sam > OF4.bam
samtools view -bS OF5.sam > OF5.bam
samtools view -bS OF6.sam > OF6.bam
samtools view -bS OF8.sam > OF8.bam
samtools view -bS OF10.sam > OF10.bam

date #optional printing out timestamp when the job ends
