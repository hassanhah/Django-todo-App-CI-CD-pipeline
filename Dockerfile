FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install Django
RUN pip install django==3.2

# Run migrations
RUN python manage.py migrate

# Make port 8001 available to the world outside this container
EXPOSE 8001

# Command to run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
