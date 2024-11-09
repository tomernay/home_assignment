# alpine image - small and sufficient image
FROM python:3.9-alpine

# ensuring no unnecessary cache files are created during installation
RUN apk add --no-cache gcc musl-dev libffi-dev && \
    pip install --no-cache-dir requests

# copying the script into the container
COPY test_nginx.py /app/test_nginx.py

WORKDIR /app

CMD ["python", "test_nginx.py"]
