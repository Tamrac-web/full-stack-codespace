#!/bin/bash
set -e

echo "Setting up additional development tools..."

# Install system dependencies
sudo apt-get update
sudo apt-get install -y curl wget unzip zip git build-essential

# Install Python packages
echo "Setting up Python packages..."
python -m pip install --upgrade pip
pip install pytest black isort mypy pylint

# Install global npm packages
echo "Installing global npm packages..."
npm install -g npm@latest

echo "Development environment setup complete!"
