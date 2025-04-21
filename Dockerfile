# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script specified in the build argument
# The script name is passed via the --build-arg SCRIPT=<script_name>
ARG SCRIPT
COPY ${SCRIPT} /app/${SCRIPT}

# Install any required dependencies (if a requirements.txt exists)
# Uncomment the following lines if your scripts have dependencies
# COPY requirements.txt /app/requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# Set the default command to run the Python script
CMD ["python", "/app/${SCRIPT}"]