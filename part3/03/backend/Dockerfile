FROM golang:1.16

RUN useradd -m appuser
USER appuser
RUN mkdir -p /home/appuser/app/
WORKDIR /home/appuser/app/
COPY . .

RUN go build; chmod +x server
