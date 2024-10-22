# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the necessary dependencies with specific versions
RUN pip install --no-cache-dir flask==2.1.2 werkzeug==2.1.2

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]