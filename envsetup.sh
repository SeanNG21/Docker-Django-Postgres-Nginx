#!/bin/bash

# Navigate to the app directory
cd app || { echo "App directory not found!"; exit 1; }

# Check if the Python virtual environment exists
if [ -d "env" ]; then
    echo "Python virtual env exists"
else
    python3.11 -m venv env
    if [ $? -ne 0 ]; then
        echo "Failed to create virtual environment. Exiting."
        exit 1
    fi
fi

# Ensure the virtual environment directory exists before activation
if [ -f "env/bin/activate" ]; then
    source env/bin/activate
else
    echo "Virtual environment activation script not found!"
    exit 1
fi

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Check if the logs directory exists
if [ -d "logs" ]; then
    echo "Log folder exists"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

# Set permissions for the logs directory
chmod -R 777 logs

echo "envsetup finishes"
