ml purge
ml WebProxy
ml CUDA/12.9.0
ml Anaconda3/2024.02-1

mkdir -p $SCRATCH/conda_pkgs
mkdir -p $SCRATCH/conda_envs

source $(conda info --base)/etc/profile.d/conda.sh

conda config --add pkgs_dirs $SCRATCH/conda_pkgs
conda config --add envs_dirs $SCRATCH/conda_envs

rm -rf ~/.local/lib/python3.11/site-packages/torch*

conda env remove -n rl_env -y
conda create -n rl_env python=3.11 -y
source $(conda info --base)/etc/profile.d/conda.sh
conda activate rl_env

mkdir -p $SCRATCH/conda_envs/rl_env/etc/conda/activate.d
cat << 'EOF' > $SCRATCH/conda_envs/rl_env/etc/conda/activate.d/env_vars.sh
export PYTHONNOUSERSITE=1
EOF

pip install torch --index-url https://download.pytorch.org/whl/cu128
pip install swig gymnasium[other] gymnasium[box2d]
pip install ipykernel notebook
python -m ipykernel install --user --name rl_env --display-name "Python (rl_env)"
