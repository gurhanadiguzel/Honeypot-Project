# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Install any needed packages specified in requirements.txt
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Make port 8000 available to the world outside this container
EXPOSE 8005

# Run app.py when the container launches
CMD ["python3", "app.py"]