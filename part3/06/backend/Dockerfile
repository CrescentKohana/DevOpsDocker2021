FROM golang:1.16-alpine as build-stage

RUN adduser -D appuser && mkdir /home/appuser/app/
WORKDIR /home/appuser/app/
COPY . .

RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /go/bin/server

FROM alpine:3.14

COPY --from=build-stage /go/bin/server /server
