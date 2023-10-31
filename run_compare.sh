#!/bin/bash
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --error=eth.err
#SBATCH --output=eth.out
#SBATCH --time=24:00:00
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1

module load DL-CondaPy/3.7

activate(){
  source /home/dhruv_s.iitr/Venv-Btp/bin/activate
}
activate

python compare.py
