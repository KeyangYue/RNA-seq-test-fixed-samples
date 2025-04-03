#!/bin/bash
#
#SBATCH --account=core-med1
#SBATCH --cpus-per-task=16
#SBATCH --mem=128GB
#SBATCH --partition=jobs-cpu-long
#SBATCH -o logs/slurm%j.log
#SBATCH -e logs/slurm%j.err
#SBATCH -J zUMIs


/data2/core-med1/kyue/zUMIs/zUMIs/zUMIs.sh -c -y /data2/core-med1/kyue/testRNA_RK_KY.yaml