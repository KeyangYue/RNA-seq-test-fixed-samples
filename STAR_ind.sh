#!/bin/sh
#
#SBATCH --account=core-med1
#SBATCH --cpus-per-task=16
#SBATCH --mem=128GB
#SBATCH --partition=jobs-cpu
#SBATCH -o logs/slurm%j.log
#SBATCH -e logs/slurm%j.err
#SBATCH -J genomeInd



#/data2/core-med1/kyue/STAR/bin/Linux_x86_64/STAR --runThreadN 16 --genomeDir /data2/core-med1/kyue/SAindex --readFilesIn /data2/core-med1/kyue/testseq_170325/fastq/de_lane1_Rainer_RNA_tests_r1_trimmed_3.fq.gz /data2/core-med1/kyue/testseq_170325/fastq/de_lane1_Rainer_RNA_tests_r2_trimmed_3.fq.gz --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix /data2/core-med1/kyue/testseq_170325/BAM/aligned_
/data2/core-med1/kyue/STAR273a/STAR-2.7.3a/bin/Linux_x86_64/STAR --runThreadN 16 --runMode genomeGenerate --genomeDir /data2/core-med1/kyue/SAindex --genomeFastaFiles /data2/core-med1/kyue/hg38/GRCh38.primary_assembly.genome.fa --sjdbGTFfile /data2/core-med1/kyue/hg38/gencode.v47.primary_assembly.annotation.gtf --sjdbOverhang 92
