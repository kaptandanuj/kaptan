# Base Image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Flask
EXPOSE 5000

# Run the application using Gunicorn for production
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]


