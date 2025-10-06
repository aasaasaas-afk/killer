#!/usr/bin/env bash
# Exit if any command fails
set -o errexit

# Install PHP (Render environment is Debian-based)
apt-get update && apt-get install -y php

# Start the Flask app
python3 app.py
