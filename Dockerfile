# 1 Use Python already installed inside the image
FROM python:3.11-slim

# 2 Set working directory inside container
WORKDIR /app

# 3 Copy your code into the containers
# COPY . .  # This will copy everything from the current directory to /app in the container
# if we have multiple files, we can copy them one by one or use a .dockerignore file to exclude unnecessary files
COPY app.py .

# 4 Command to run when container starts
CMD ["python", "app.py"]