# 1. Base image
FROM python:3.10-slim

# 2. Set working directory
WORKDIR /app

# 3. Copy files
COPY requirements.txt .
COPY app.py .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Run app
CMD ["python", "app.py"]
