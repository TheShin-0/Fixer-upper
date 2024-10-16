#!/usr/bin/env bash
conda init
sudo apt-get update && sudo apt-get full-upgrade -y
sudo apt-get install texlive-xetex texlive-fonts-recommended texlive-plain-generic -y
sudo apt-get install pandoc -y
conda create --name fermipy -c conda-forge -c fermi python=3.9 "fermitools>=2.2.0" healpy gammapy jupyter -y
source activate fermipy
pip install fermipy==1.3.0
conda env create -f gammapy-1.2-environment.yml -y
