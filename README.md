# 🐳 Docker Hands-On Practice – Hello Docker
![Docker](https://img.shields.io/badge/Docker-Containerization-blue)
![Python](https://img.shields.io/badge/Python-3.10-yellow)
![MLOps](https://img.shields.io/badge/MLOps-Practice-green)
![Status](https://img.shields.io/badge/Status-Learning-success)

This repository documents my hands-on practice with Docker, where I learned how to containerize a Python application, build Docker images, run containers, and deploy images to Docker Hub.


## What This Repository Covers

In this practice, I learned the **complete Docker workflow**:

* What Docker is and why it is used
* Difference between Image and Container
* Writing a `Dockerfile`
* Building a Docker Image
* Running a Docker Container
* Understanding Docker Hub
* Tagging and pushing images to Docker Hub
* Using Docker with VS Code and Docker Desktop


## 🐳 Why Docker?
Docker solves the problem of:

* ❌ “It works on my machine but not on yours”
* ❌ Dependency and environment issues
* ❌ Complex deployment setups

Docker packages:

* Application code
* Dependencies
* Runtime environment

*Into a **container** that runs **the same everywhere**.*


## Project Structure

```text
docker-hands-on/
│
├── gitignore
├── app.py          # Python application
├── Dockerfile      # Instructions to build Docker image
└── README.md       # Documentation
```


## 🐍 Python Program Used

A simple Python program that prints a message:

```python
print("Hello World! from the Docker.🐳")
```

This keeps the focus on **learning Docker**, not Python complexity.


##  Dockerfile Explained

```dockerfile
# 1. Base image
FROM python:3.10-slim

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy application code
COPY app.py .

# 4. Command to run the app
CMD ["python", "app.py"]
```

### What Happens Here?

| Step      | Purpose                                  |
| --------- | ---------------------------------------- |
| `FROM`    | Provides Python runtime inside container |
| `WORKDIR` | Sets `/app` as working directory         |
| `COPY`    | Copies code into container               |
| `CMD`     | Runs the Python program                  |

**Note:**
The Python version in Dockerfile is **independent of system Python**.


## Building the Docker Image

```bash
docker build -t hello-docker .
```

* `-t hello-docker` → assigns a name (tag) to the image
* `.` → current directory as build context


## Running the Container

```bash
docker run hello-docker
```

Output:

```text
Hello World! from the Docker.🐳
```

*This confirms the container is running correctly.*


## What is Docker Hub?
Docker Hub is:

* A **cloud registry for Docker images**
* Similar to **GitHub**, but for **container images**


**Difference from GitHub:**

| GitHub             | Docker Hub           |
| ------------------ | -------------------- |
| Stores source code | Stores Docker images |
| `.py`, `.md` files | Built images         |
| Code sharing       | Image distribution   |



## Tagging the Image

Before pushing, the image must be tagged:

```bash
docker tag hello-docker hanseekadhingana/hello-docker:latest
```

* `latest` → default version tag
* Tags help manage **versions of images**



## Pushing Image to Docker Hub

```bash
docker push hanseekadhingana/hello-docker:latest
```

*This uploads the image so **anyone can pull and run it**.*


## Authentication Note

Docker Hub requires **Access Tokens** (not passwords) for pushing images.

**Steps:**
1. Create Access Token on Docker Hub
2. Login via terminal:

   ```bash
   docker login
   ```
3. Use **token as password**



## How Docker Pulls Images

When you run:

```bash
docker run hello-world
```

Docker:

1. Checks local system for image
2. If not found → pulls from Docker Hub
3. Saves image locally
4. Creates & runs container


## Future Practice Ideas

* Dockerize a Streamlit app
* Add requirements.txt
* Use Docker Compose
* Multi-stage builds
* ML model deployment with Docker


## 👤 Author

**Hanseeka Dhingana**  


