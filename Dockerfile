# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN apt-get update && apt-get install -y \
    # Add any dependencies here \
    && rm -rf /var/lib/apt/lists/*

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME my_container

# Run bash script when the container launches
CMD ["bash", "display_name.sh"]
