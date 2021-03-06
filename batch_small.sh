#!/bin/bash

# set the number of nodes
#SBATCH --nodes=1

# set name of job
#SBATCH -J JDPtest1

# set number of GPUs
#SBATCH --gres=gpu:1

#Select a partition
#SBATCH --partition=devel

# mail alert at start, end and abortion of execution
#SBATCH --mail-type=ALL

# send mail to this address
#SBATCH --mail-user=jehillparikh@gmail.com

module load python3/anaconda

source activate tensorflow2-gpu
python tftest.py
