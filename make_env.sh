ml purge
ml WebProxy
ml CUDA/12.9.0
ml Miniconda3/24.11.1

mkdir -p $SCRATCH/conda_pkgs
mkdir -p $SCRATCH/conda_envs

source $(conda info --base)/etc/profile.d/conda.sh
conda config --add pkgs_dirs $SCRATCH/conda_pkgs
conda config --add envs_dirs $SCRATCH/conda_envs

conda create -n rl_env python=3.11 -y
source $(conda info --base)/etc/profile.d/conda.sh
conda activate rl_env

pip install torch --index-url https://download.pytorch.org/whl/cu126
pip install swig gymnasium[other] gymnasium[box2d]
pip install ipykernel notebook