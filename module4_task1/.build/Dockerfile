# base image to use
FROM golang:1.15.8-buster

# creates a working directory inside the Docker image
WORKDIR /module4_task1

# Install Hugo
RUN curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb -o hugo.deb
RUN apt install ./hugo.deb

# Install golangci-lint
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin

# install markdownlint
RUN npm install -g markdownlint-cli
