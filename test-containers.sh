#!/bin/bash

echo "=== 🚀 Starting Container Tests ==="

# 1. Check if all containers are running
echo "🔍 Checking running containers..."
docker ps --format "table {{.Names}}\t{{.Status}}"

# 2. Test MongoDB connection inside backend container
echo "🔌 Testing MongoDB connectivity from Backend..."
docker-compose exec backend bash -c "
  apt update > /dev/null && apt install -y curl > /dev/null
  
  curl -s http://mongo:27017 || echo '❌ MongoDB connection failed from Backend'
"

# 3. Test backend API endpoint
echo "🌐 Testing Backend API on http://localhost:3000/"
curl -s http://localhost:3000/ || echo "❌ Backend is not responding on port 3000"

# 4. Test if Frontend is being served
echo "🌍 Testing Frontend on http://localhost:8080/"
curl -s http://localhost:8080/ || echo "❌ Frontend is not being served on port 8080"

echo "✅ All tests attempted. Please check the outputs above."
