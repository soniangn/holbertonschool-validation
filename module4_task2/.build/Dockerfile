# base image to use
FROM golang:1.15.8-alpine

SHELL ["/bin/bash", "-l", "-c", "-o", "pipefail"]

# creates a working directory inside the Docker image
WORKDIR /module4_task2

# Install Hugo
RUN curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb -o hugo.deb \
    && apt-get install -y ./hugo.deb

# Install golangci-lint
# hadolint ignore=SC2046,DL4006
RUN curl -osSfL "https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh" | sh -s -- -b $(go env GOPATH)/bin

# Install npm
ENV NODE_VERSION=16.13.0
# hadolint ignore=DL3008,DL3015
RUN apt-get install -y curl \
    && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
ENV NVM_DIR=/root/.nvm
# hadolint ignore=SC1091
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION} \
    && nvm use v${NODE_VERSION} \
    nvm alias default v${NODE_VERSION}
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"

# install markdownlint
RUN npm install -g markdownlint-cli@0.34.0
