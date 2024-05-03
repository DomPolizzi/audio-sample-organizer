#!/bin/bash

echo "Setting up the environment..."
virtualenv -p python3 pytorch-venv

source pytorch-venv/bin/activate

pip install ipykernel

python -m ipykernel install --user --name=pytorch-kernel

pip install -r requirements.txt --upgrade

echo "Environment setup complete. To activate the environment, run 'source pytorch-venv/bin/activate'"

deactivate