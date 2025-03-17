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


@app.route('/')
def home():
    return "Hello, Fully Dockerized World! 🚀"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
version: '3'
services:
  flask-app:
    build: .
    ports:
      - "5000:5000"
docker build -t flask-app .
docker run -p 5000:5000 flask-app
heroku container:login
heroku create my-flask-app
heroku container:push web -a my-flask-app
heroku container:release web -a my-flask-app
heroku open -a my-flask-app
docker logs <container_id>  # Check logs
docker ps -a                # See all running containers
docker images               # Check built images
docker system prune -a       # Clean old images if needed
