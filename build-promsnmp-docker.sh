#!/bin/bash
set -e

# Build the PromSNMP project using Docker with Maven
echo "Building PromSNMP with Docker..."

# Check if the PromSNMP directory exists as a submodule
if [ ! -d "PromSNMP" ]; then
  echo "Error: PromSNMP directory not found. Make sure you've initialized the Git submodule:"
  echo "  git submodule init"
  echo "  git submodule update"
  exit 1
fi

# Use Docker to build the Maven project
echo "Running Maven build in Docker container..."
docker run --rm \
  -v "$(pwd)/PromSNMP":/app \
  -w /app \
  maven:3.9-eclipse-temurin-21 \
  mvn clean package

echo "Maven build completed successfully."
