FROM python:3.7-alpine

ENV PYTHONBUFFERED 1

RUN mkdir /app
COPY ./requirements.txt /requirements.txt


RUN pip install -U pip && pip install -r requirements.txt

COPY ./app /app
WORKDIR /app
RUN adduser -D user
USER user