FROM python:3.9-alpine

WORKDIR /app

# Set environment variables
ENV ENVIRONMENT=DEV \
    HOST=localhost \
    PORT=8000 \
    REDIS_HOST=redis \
    REDIS_PORT=6379 \
    REDIS_DB=0 


COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "hello.py"]
