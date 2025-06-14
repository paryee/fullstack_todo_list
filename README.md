 README.md (Full Content):

# 📦 Fullstack To-Do App — Dockerized

This project containerizes a 3-tier fullstack to-do list application using **Docker** and **Docker Compose**. It includes a Frontend (React), Backend (Node.js/Express), and MongoDB.

---

## 🚀 Setup Instructions

### ✅ Prerequisites

- Docker Desktop installed and running
- Git Bash, WSL, or Linux terminal for running `.sh` scripts (or PowerShell alternative)
- Internet connection (for pulling images and installing packages)

### 🔧 Steps to Build & Run

1. **Clone or unzip the project**
   ```bash
   cd path/to/fullstack-todo-list

Start all containers

docker-compose up --build -d

Access the application:

Frontend: http://localhost:8080

Backend: http://localhost:3000

MongoDB: Runs internally at mongo:27017

Stop containers:
docker-compose down

Run container tests (optional)
./test-containers.sh

🌐 Network and Security Configurations
📡 Networking
All services are defined in the same Docker network (app-network) to allow container-to-container communication:

Frontend calls Backend at http://backend:3000

Backend connects to MongoDB using mongodb://mongo:27017

🔐 Security Settings
Database Credentials are hardcoded for local development:

Username/Password: Not secured (adjust for production use)

Exposed Ports:

8080: React Frontend

3000: Node Backend

27017: MongoDB (optional, can be internal-only)

Note: Always use environment variables or Docker secrets for production deployments.

🧰 Troubleshooting Guide

           Issue	                      Possible Solution
docker: command not found	      Make sure Docker Desktop is   
                                  installed and added to system PATH
Containers fail to connect	      Check if Docker Desktop is running and network names match
Frontend not loading	          Confirm it’s running on http://localhost:8080 and backend is accessible
MongoDB errors	                   Ensure mongo service is up and reachable at mongo:27017
permission denied on test script   Run using bash test-containers.sh in Git Bash or WSL

📁 Project Structure

fullstak-todo-list/
│
├── backend/              # Node.js backend
│   └── Dockerfile
├── frontend/             # React frontend
│   └── Dockerfile
├── docker-compose.yml    # Compose file defining all services
├── test-containers.sh    # Health check script for containers
└── README.md             # This documentation

👨‍💻 Author

Prince Adama Aryee







