#!/bin/bash
#SBATCH --job-name="AMR_rgi" #name of the job submitted
#SBATCH -p short #name of the queue you are submitting job to
#SBATCH -N 1 #number of nodes in this job
#SBATCH -n 40 #number of cores/tasks in this job, you get all 20 cores with 2 threads per core with hyperthreading
#SBATCH -t 48:00:00 #time allocated for this job hours:mins:seconds
#SBATCH -o "stdout.%j.%N" # standard out %j adds job number to outputfile name and %N adds the node name
#SBATCH -e "stderr.%j.%N" #optional but it prints our standard error

module load rgi

rgi bwt --read_one /OIL_FLY_WGS/OF2/USDA-P60-S1-OF002L_S1_L001_R1_001.fastq.gz --read_two OIL_FLY_WGS/OF2/USDA-P60-S1-OF002L_S1_L001_R2_001.fastq.gz --output_file S1_OF2 --local --include_other_models --include_wildcard

rgi bwt --read_one /OIL_FLY_WGS/OF4/USDA-P60-S2-OF004B_S2_L001_R1_001.fastq.gz --read_two /OIL_FLY_WGS/OF4/USDA-P60-S2-OF004B_S6_L001_R2_001.fastq.gz --output_file S2_OF4 --local --include_other_models --include_wildcard

rgi bwt --read_one /OIL_FLY_WGS/OF5/USDA-P60-S3-OF005B_S3_L001_R1_001.fastq.gz --read_two /OIL_FLY_WGS/OF5/USDA-P60-S3-OF005B_S3_L001_R2_001.fastq.gz --output_file S3_OF5 --local --include_other_models --include_wildcard

rgi bwt --read_one /OIL_FLY_WGS/OF6/USDA-P60-S4-OF006B_S4_L001_R1_001.fastq.gz --read_two /OIL_FLY_WGS/OF6/USDA-P60-S4-OF006B_S4_L001_R2_001.fastq.gz --output_file S4_OF6 --local --include_other_models --include_wildcard

rgi bwt --read_one /OIL_FLY_WGS/OF8/USDA-P60-S5-OF008B_S5_L001_R1_001.fastq.gz --read_two /OIL_FLY_WGS/OF8/USDA-P60-S5-OF008B_S5_L001_R2_001.fastq.gz --output_file S5_OF8 --local --include_other_models --include_wildcard

rgi bwt --read_one /OIL_FLY_WGS/OF10/USDA-P60-S6-OF0010B_S6_L001_R1_001.fastq.gz --read_two /OIL_FLY_WGS/OF10/USDA-P60-S6-OF0010B_S6_L001_R2_001.fastq.gz --output_file S6_OF10 --local --include_other_models --include_wildcard

date #optional printing out timestamp when the job ends
