# Use an official Python runtime as a parent image
FROM ubuntu:18.04

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY apps/ /app

# Define environment variable
ENV NAME jenkins-test

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Install Docker

# Running docker-compose
# RUN cd docker_files && docker-compose up
CMD ["bash"]
