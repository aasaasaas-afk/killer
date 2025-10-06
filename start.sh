#!/usr/bin/env bash
set -o errexit  # Exit on error

echo "🔧 Updating system packages..."
apt-get update -y > /dev/null

echo "📦 Installing PHP..."
apt-get install -y php-cli > /dev/null

echo "🚀 Starting Flask app..."
python3 app.py
