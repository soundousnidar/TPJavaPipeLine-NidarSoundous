FROM maven:3.9.6-eclipse-temurin-17

# Installer git
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /app