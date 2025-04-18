# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the repository into the container
COPY . /app/

# Install necessary dependencies (if there are any additional required modules, specify them here)
RUN python -m pip install --upgrade pip

# Accept the script to run as an argument
ARG SCRIPT=main.py

# Default command to run the specified script
CMD ["sh", "-c", "python ${SCRIPT}"]
