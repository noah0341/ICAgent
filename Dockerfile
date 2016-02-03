FROM golang:1.6-alpine

RUN mkdir -p /app/icagent
COPY . /app/icagent/
WORKDIR /app/icagent/

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

# RUN go build -i /app/icagent/ICAgent.go

ENTRYPOINT ["go run /app/icagent/ICAgent.go"]