#  Theory - Containerization and DevOps

This folder contains **class-wise theory notes** for the subject  
**Containerization and DevOps**.

The notes include both **conceptual understanding** and **command-level explanations** wherever required.

---

##  Class-wise Notes

###  Class 1 - Docker Basics (Hands-on)
Topics covered:
- Docker introduction
- Docker architecture overview
- Basic Docker commands
- Image and container lifecycle

[Open Class 1 Notes](Class1/README.md)

---

### Class 2 & 3 - Application Containerization (Java & Python)

Topics covered:
- Writing Dockerfiles for different languages
- Building Docker images using custom Dockerfiles
- Running containers interactively
- Installing dependencies inside images
- Using alternate Dockerfiles
- Tagging and pushing images to Docker Hub
- Inspecting image layers using `docker history`
- Volume mounting for dynamic execution

[Open Class 2 Notes](Class2/README.md)

[Open Class 3 Notes](Class3/README.md)

---

### Class 4 - Docker Engine API via Unix Socket (Hands-on)

Topics covered:
- Docker daemon and REST API
- Understanding `/var/run/docker.sock`
- Accessing Docker Engine using curl
- Pulling images via API
- Creating containers using HTTP requests
- Starting and stopping containers via API
- Inspecting container metadata

[Open Class 4 Notes](Class4/README.md)

---

### Class 5 - Multistage Docker Build (Hands-on)

Topics covered:
- Single-stage Docker build using Ubuntu and GCC
- Building a C application inside a Docker container
- Understanding Docker image layers
- Introduction to Multistage builds
- Using `AS builder` stage
- Using `FROM scratch` for minimal images
- Copying artifacts using `COPY --from=builder`
- Comparing image sizes (Single vs Multistage)
- Optimizing images for production environments

[Open Class 5 Notes](Class5/README.md)

---


