FROM golang:1.6-alpine

RUN mkdir -p /go/src/app
WORKDIR /go/src/app

ONBUILD COPY . /go/src/app

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN go build /go/src/app/CAgent.go

ENTRYPOINT /go/src/app/ICAgent