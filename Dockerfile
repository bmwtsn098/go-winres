FROM golang:1.18

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential

ADD . /go-winres
WORKDIR /go-winres

RUN go mod tidy
RUN go build