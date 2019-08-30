# Use an official Python runtime as a parent image
FROM docker

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY apps/ /app

# Define environment variable
ENV NAME jenkins-test

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Running docker-compose
# RUN cd /app/apps/docker_files && docker-compose up
RUN ls -la
