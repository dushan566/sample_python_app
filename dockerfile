# Dockerfile

# Use Python 3.8 base image for amd64 architecture
FROM python:3.8-slim AS amd64

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app/. .

# Command to run the application using Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
