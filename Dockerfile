FROM golang:1.20.7-bookworm

RUN apt-get update \
    && apt-get install -y

RUN mkdir -p /home/echo-hot-reload-test
RUN go install github.com/cosmtrek/air@latest

WORKDIR /home/echo-hot-reload-test