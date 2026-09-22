# Containerized Flask Web Application

A lightweight, reproducible Flask micro-service packaged and deployed with Docker.

## Demo

![Flask App Running via Docker Port Mapping](assets/browser-demo.png)

---

## Architecture & Features

- **Micro-Framework:** Python Flask application listening on container port `5000`.
- **Lightweight Runtime:** Built on `python:3.11-alpine` to maintain a sub-60MB footprint.
- **Layer Caching:** Dependency resolution (`requirements.txt`) isolated before source code copy.
- **Security:** Drops root privileges using an unprivileged `appuser`.

---

## Getting Started

### Prerequisites
- [Docker Engine / Docker Desktop](https://docs.docker.com/get-docker/)

### Build & Run Instructions

1. **Build the Docker Image:**
   ```bash
   docker build -t flask-docker-app:1.0 .
