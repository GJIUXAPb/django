FROM python:3.13.7-slim

ENV PYTHONUNBUFFERED 1

WORKDIR /app

RUN apt update && apt upgrade -y && apt install -y \
    libpq-dev gcc bash --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade --no-cache-dir pip
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

CMD ["/bin/bash"]