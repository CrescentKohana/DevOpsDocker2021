ARG port=8080

FROM golang:1.16

WORKDIR /usr/src/app
COPY . .

RUN go build; chmod +x server

ENV PORT=$port
ENV REQUEST_ORIGIN=http://localhost:5000

EXPOSE $port

CMD ["./server"]
