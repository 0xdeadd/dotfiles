#!/bin/bash

# Update and upgrade
sudo apt update && sudo apt upgrade -y

# Install Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
rm ~/miniconda.sh
export PATH="$HOME/miniconda/bin:$PATH"
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc

# Initialize conda
~/miniconda/bin/conda init bash
source ~/.bashrc

# Create a conda environment and activate it
conda create -n jupyter_env python=3.9 -y
conda activate jupyter_env
# Install Jupyter and PyTorch with CUDA support
conda install -c conda-forge notebook -y
# Run the script from `https://pytorch.org/get-started/locally/`
conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
# Install fastai
conda install -c fastai fastai

echo "Setup Completed. Please activate the conda environment with 'conda activate jupyter_env'"
