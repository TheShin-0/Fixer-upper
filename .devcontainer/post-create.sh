#!/usr/bin/env bash
mamba env create -f gammapy-1.2-environment.yml
mamba create --name fermipy -c conda-forge -c fermi python=3.9 "fermitools>=2.2.0" healpy gammapy jupyter
source activate fermipy
pip install fermipy==1.3.0