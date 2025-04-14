#!/bin/bash

python3 -m venv jlab_env
source jlab_env/bin/activate

pip3 install --upgrade pip

pip3 install -r requirements.txt
python -m ipykernel install --user --name=jlab_env --display-name "Python (jlab_env)"

jupyter lab
