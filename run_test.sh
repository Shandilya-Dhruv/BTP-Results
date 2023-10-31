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

python test.py --model_names 'DNANet' --pth_dirs 'SIRST3/DNANet_full.pth.tar' 'SIRST3/DNANet_LESPS_centroid.pth.tar' 'SIRST3/DNANet_LESPS_coarse.pth.tar' --dataset_names 'NUAA-SIRST' 'NUDT-SIRST' 'IRSTD-1K'
python test.py --model_names 'DNANet' --pth_dirs 'SIRST3/DNANet_LESPS_centroid_400.pth.tar' 'SIRST3/DNANet_LESPS_coarse_400.pth.tar' --save_log './log4/' --dataset_names 'NUAA-SIRST' 'NUDT-SIRST' 'IRSTD-1K'
