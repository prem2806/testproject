FROM python:3.8 AS builder
RUN mkdir /app/
WORKDIR /app/
COPY ./test.py /app/test.py

# Multi docker image
FROM python:3.8-alpine
RUN mkdir /code/
WORKDIR /code/
COPY --from=builder /app/test.py /code/test.py
