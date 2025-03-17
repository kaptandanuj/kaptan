# 1. Create a Flask app
# File: app.py

from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "<h1>Welcome to Your Sexy Flask App! 🔥</h1>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

# 2. Create a requirements file
# File: requirements.txt

flask

# 3. Create a Dockerfile
# File: Dockerfile

# Use an official lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask runs on
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]

# 4. Create a docker-compose file (optional but useful)
# File: docker-compose.yml

version: '3'
services:
  flask-app:
    build: .
    ports:
      - "5000:5000"
    restart: always
