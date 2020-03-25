#!/bin/bash

# set the number of nodes
#SBATCH --nodes=1

# set max wallclock time
#SBATCH --time=01:00:00

# set name of job
#SBATCH -J JDPtest1

# set number of GPUs
#SBATCH --gres=gpu:4

# mail alert at start, end and abortion of execution
#SBATCH --mail-type=ALL

# send mail to this address
#SBATCH --mail-user=jehill.parikh@newcastle.ac.uk


#Launching the commands within script.sh
/jmain01/apps/docker/tensorflow-batch -c ./script.sh