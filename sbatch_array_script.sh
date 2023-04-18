#!/bin/bash
#SBATCH --mail-user=username@unc.edu
#SBATCH --mail-type=ALL
#SBATCH -p general
#SBATCH --ntasks=1
#SBATCH --time=0-1:00
#SBATCH --mem=1g
#SBATCH -a 1-100%50
#SBATCH -o /nas/longleaf/home/username/LOGFILES/AODunscaled_%A_rep%a.out
#SBATCH -e /nas/longleaf/home/username/LOGFILES/AODunscaled_%A_rep%a.err

echo "SLURM_JOBID: " $SLURM_JOBID
echo "SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID
echo "SLURM_ARRAY_JOB_ID: " $SLURM_ARRAY_JOB_ID
######################################
#To be run on LONGLEAF!
#100 simulations/ replicates per submitted job!
#Allow 50 to run in parallel at any time.
#######################################

declare -i startID=0

declare -i repID=${startID}+$SLURM_ARRAY_TASK_ID

module load slim //load any modules required

cd /home/username/

#run script or program

