#!/bin/bash
#SBATCH --job-name="hisat2_alignment" #name of the job submitted
#SBATCH -p short #name of the queue you are submitting job to
#SBATCH -N 1 #number of nodes in this job
#SBATCH -n 40 #number of cores/tasks in this job, you get all 20 cores with 2 threads per core with hyperthreading
#SBATCH -t 48:00:00 #time allocated for this job hours:mins:seconds
#SBATCH -o "stdout.%j.%N" # standard out %j adds job number to outputfile name and %N adds the node name
#SBATCH -e "stderr.%j.%N" #optional but it prints our standard error

module load hisat2

hisat2 -x /References/OF2/OF2_Ref -1 /OIL_FLY_WGS/USDA_PID-60_SID-1-7_bacteria/FastQ/USDA-P60-S1-OF002L_S1_L001_R1_001.fastq.gz -2 /OIL_FLY_WGS/USDA_PID-60_SID-1-7_bacteria/FastQ/USDA-P60-S1-OF002L_S1_L001_R2_001.fastq.gz -S OF2.sam

hisat2 -x /References/OF4/OF4_Ref -1 /OIL_FLY_WGS/USDA_PID-60_SID-1-7_bacteria/FastQ/USDA-P60-S2-OF004B_S2_L001_R1_001.fastq.gz -2 /OIL_FLY_WGS/USDA_PID-60_SID-1-7_bacteria/FastQ/USDA-P60-S2-OF004B_S2_L001_R2_001.fastq.gz -S OF4.sam

hisat2 -x /References/OF5/OF5_Ref -1 /OIL_FLY_WGS/USDA_PID-60_SID-1-7_bacteria/FastQ/USDA-P60-S3-OF005B_S3_L001_R1_001.fastq.gz -2 /OIL_FLY_WGS/USDA_PID-60_SID-1-7_bacteria/FastQ/USDA-P60-S3-OF005B_S3_L001_R2_001.fastq.gz -S OF5.sam

hisat2 -x /References/OF6/OF6_Ref -1 /OIL_FLY_WGS/USDA_PID-60_SID-1-7_bacteria/FastQ/USDA-P60-S4-OF006B_S4_L001_R1_001.fastq.gz -2 /OIL_FLY_WGS/USDA_PID-60_SID-1-7_bacteria/FastQ/USDA-P60-S4-OF006B_S4_L001_R2_001.fastq.gz -S OF6.sam

hisat2 -x /References/OF8/OF8_Ref -1 /OIL_FLY_WGS/USDA_PID-60_SID-1-7_bacteria/FastQ/USDA-P60-S5-OF008B_S5_L001_R1_001.fastq.gz -2 /OIL_FLY_WGS/USDA_PID-60_SID-1-7_bacteria/FastQ/USDA-P60-S5-OF008B_S5_L001_R2_001.fastq.gz -S OF8.sam

hisat2 -x /References/OF10/OF10_Ref -1 /OIL_FLY_WGS/USDA_PID-60_SID-1-7_bacteria/FastQ/USDA-P60-S6-OF0010B_S6_L001_R1_001.fastq.gz -2 /OIL_FLY_WGS/USDA_PID-60_SID-1-7_bacteria/FastQ/USDA-P60-S6-OF0010B_S6_L001_R2_001.fastq.gz -S OF10.sam

date #optional printing out timestamp when the job ends
