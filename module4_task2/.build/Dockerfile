# base image to use
FROM golang:1.15.8-alpine

SHELL ["/bin/sh", "-l", "-c", "-o", "pipefail"]

# creates a working directory inside the Docker image
WORKDIR /module4_task2

# Install all tools
RUN apk update && \
    apk add --no-cache curl

# Install Hugo
RUN apk add --upgrade hugo

# Install golangci-lint
# hadolint ignore=SC2046,DL4006
RUN curl -sSfL "https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh" | sh -s -- -b $(go env GOPATH)/bin

# Install npm
RUN apk add --update nodejs npm

# install markdownlint
RUN npm install -g markdownlint-cli@0.34.0
