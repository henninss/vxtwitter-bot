# Use an official lightweight Python image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy dependency file first (for caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files (main.py, token.dat, etc.)
# Use at your own risk! Copies token into image
COPY . .

# Run your bot
ENTRYPOINT ["python", "main.py"]

