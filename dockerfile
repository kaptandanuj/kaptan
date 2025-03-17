# Base image (lightweight & fast)
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements file first (for caching optimization)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all source code into the container
COPY . .

# Expose the application port
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
