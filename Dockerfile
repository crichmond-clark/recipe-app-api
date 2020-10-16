

FROM python:3.7-alpine


ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt \
    && gcc libc-dev linux-headers postgresql-dev musl-dev zlib zlib-dev
RUN pip install -r /requirements.txt


RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user

USER user