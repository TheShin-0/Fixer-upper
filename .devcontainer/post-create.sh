#!/usr/bin/env bash
sudo apt-get update
sudo apt install texlive-xetex -y
conda init
conda create --name fermipy -c conda-forge -c fermi python=3.9 "fermitools>=2.2.0" healpy gammapy jupyter -y
source activate fermipy
pip install fermipy==1.3.0
source activate base
conda install -c conda-forge pandoc -y
conda env create -f gammapy-1.2-environment.yml -y
