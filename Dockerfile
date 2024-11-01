FROM python:3.9-slim

WORKDIR /app

# Copy and install Python dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Install system dependencies for Tkinter and other required libraries
RUN apt-get update && apt-get install -y \
    libx11-6 libxext-dev libxrender-dev libxinerama-dev \
    libxi-dev libxrandr-dev libxcursor-dev libxtst-dev tk-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy your app files to the Docker image
COPY . .

# Run the application
CMD ["python", "main.py"]
