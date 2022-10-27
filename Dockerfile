# Pull base Image

FROM python:3.12.0a1-slim-bullseye

# Set environment variable

ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYCODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory

WORKDIR /code

# Install dependencies

COPY ./requirements.txt .
RUN pip install -r requirements.txt

# COPY Project

COPY . .