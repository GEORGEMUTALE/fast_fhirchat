# 1. Base Image
FROM python:3.9-slim

# 2. Working Directory
WORKDIR /app

# 3. Dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Application Code
COPY . .

# 5. Expose Port
EXPOSE 8000

# 6. Run the App
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

