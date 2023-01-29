# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory
WORKDIR N:\workspace

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port
EXPOSE 5000

# Start the application
CMD ["python", "demo.py"]
