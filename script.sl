#!/bin/bash

#SBATCH -J DeepRmoussy

#SBATCH --time 05:00:00

#SBATCH --output %J.txt
#SBATCH --error %J.txt

#SBATCH --mail-type ALL
#SBATCH --mail-user romain.moussy@insa-rouen.fr

#SBATCH --cpus-per-task=10
#SBATCH --partition insa

#SBATCH --mem=50000


#SBATCH --gres=gpu:2

#SBATCH --nodes 1

#conda activate projetDeep

srun python3 train.py
