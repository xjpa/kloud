#!/bin/bash

set -e

PROJECT_DIR="/root/code"
ENV_NAME="ml-env"

cd "$PROJECT_DIR"

echo "Creating Python virtual environment: $ENV_NAME"
python3 -m venv "$ENV_NAME"

echo "Activating virtual environment"
source "$ENV_NAME/bin/activate"

echo "Upgrading pip"
pip install --upgrade pip

echo "Installing ML libraries"
pip install numpy pandas scikit-learn matplotlib

echo "Generating requirements.txt"
pip freeze > requirements.txt

echo "Setup complete."
echo "Python path:"
which python

echo "Installed packages:"
cat requirements.txt