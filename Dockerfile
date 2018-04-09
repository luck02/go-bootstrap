FROM golang:1.10

LABEL description="golang 1.10 + redis-cache code"

# install dep:
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

