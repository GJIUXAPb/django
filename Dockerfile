#sudo docker build -t gjiuxapb/vektor_a .
# Use the official slim Python image
FROM python:3.13.5-slim
# Set environment variables to prevent Python from buffering stdout and stdin
ENV PYTHONUNBUFFERED 1
# Set working directory in the container
WORKDIR /app
# Install system dependencies
RUN apt update && apt upgrade -y && apt install -y \
    libpq-dev gcc bash --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Install Python dependencies
RUN pip install --upgrade --no-cache-dir pip
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt
# Base command
CMD ["/bin/bash"]
