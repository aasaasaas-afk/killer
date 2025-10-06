# Base image with Python
FROM python:3.13-slim

# Install PHP
RUN apt-get update && apt-get install -y php

# Set working directory
WORKDIR /app

# Copy your app
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

# Run Flask app
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000"]
