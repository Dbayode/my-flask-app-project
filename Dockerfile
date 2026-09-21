# Use an official lightweight Python Alpine runtime
FROM python:3.11-alpine

# Set environment variables to optimize Python runtime in container
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Set the working directory inside the container
WORKDIR /app

# Cache layer: install dependencies first so rebuilds skip this step if requirements don't change
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY app.py .

# Add a non-root user for security
RUN adduser -D appuser && chown -R appuser /app
USER appuser

# Document that the container listens on port 5000
EXPOSE 5000

# Launch the application
CMD ["python", "app.py"]
