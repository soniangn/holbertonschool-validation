# base image to use
FROM golang:1.15.8-alpine

# shell command to use
SHELL ["/bin/sh", "-l", "-c", "-o", "pipefail"]

# creates a working directory inside the Docker image
WORKDIR /module4_task2

# Install all tools
# hadolint ignore=DL3018
RUN apk add --no-cache curl nodejs npm

# Install Hugo
# hadolint ignore=DL3018,DL3059
RUN apk add --no-cache hugo

# Install golangci-lint
# hadolint ignore=SC2046,DL4006
RUN curl -sSfL "https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh" | sh -s -- -b $(go env GOPATH)/bin

# Install container-structure-test
RUN curl -LO "https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64" && \
chmod +x container-structure-test-linux-amd64 && mkdir -p $HOME/bin && export PATH=$PATH:$HOME/bin && \
mv container-structure-test-linux-amd64 $HOME/bin/container-structure-test

# install markdownlint
RUN npm install -g markdownlint-cli@0.34.0
