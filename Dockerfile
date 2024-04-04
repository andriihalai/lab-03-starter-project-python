# Use an official Python runtime as the base image
FROM python:3.10


# Set the working directory in the container
WORKDIR /app


# Copy the current directory contents into the container at /app
COPY . /app


# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r ./requirements/backend.in


EXPOSE 8080


# Specify the command to run on container start
CMD ["uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]