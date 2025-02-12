# Use an official lightweight Python image as the base
FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt into the container at /app
COPY requirements.txt /app/

# Install FastAPI dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . /app/

# Expose the required port (default for FastAPI is 8000)
EXPOSE 8000

# Set the entry point for the container
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]