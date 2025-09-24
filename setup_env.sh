#!/bin/bash

# Get the directory of the Bash script
script_dir="/work/MEG Analysis"

# Create a virtual environment in the same directory as the script
python3 -m venv "/work/MEG Analysis/env"

# Activate the virtual environement
source "/work/MEG Analysis/env/bin/activate"
pip install --upgrade pip

# Install requirements from the same directory as the script
python3 -m pip install -r "/work/MEG Analysis/requirements.txt"

echo "Done!"
