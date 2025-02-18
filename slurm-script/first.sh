#!/bin/bash -l
#SBATCH -D ~/work/agro932/sgraham121/2025-agro932-lab/data
#SBATCH -o ~/work/agro932/sgraham121/2025-agro932-lab/slurm-log/firstslurm-stdout-%j.txt
#SBATCH -e ~//work/agro932/sgraham121/2025-agro932-lab/slurm-log/firstslurm-stderr-%j.txt
#SBATCH -J firstslurm
#SBATCH -t 1:00:00
set -e
set -u

cd largedata
for i in {1..20}
do
   wgsim first_chr.fa -e 0 -d 500 -N 50000 -1 100 -2 100 -r 0.1  -R 0 -X 0 l$i.read1.fq l$i.read2.fq
done