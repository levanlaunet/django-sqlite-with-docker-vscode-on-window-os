FROM python:3.8.5-alpine
ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY ./requirements.txt .
COPY ./app /app

EXPOSE 8000

RUN pip install --upgrade pip && pip install -r requirements.txt && adduser --disabled-password --no-create-home app

USER app