FROM python:3.8.5-alpine
MAINTAINER ELIDJEAKA


ENV PYTHONUNBUFFERED 1
COPY ./requirement.txt /requirement.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user