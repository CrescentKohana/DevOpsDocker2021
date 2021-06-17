FROM golang:1.16-alpine

RUN adduser -D appuser && mkdir -p /home/appuser/app/
WORKDIR /home/appuser/app/
COPY . .

RUN go build && \
    chmod +x server

USER appuser
