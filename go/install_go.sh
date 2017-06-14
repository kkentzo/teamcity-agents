#!/bin/bash

GOVERSION=1.8.3
GOPLATFORM=linux
GOARCH=amd64

curl -o ./go.tar.gz "https://storage.googleapis.com/golang/go$GOVERSION.$GOPLATFORM-$GOARCH.tar.gz"
tar -C /usr/local -xzf ./go.tar.gz
rm go.tar.gz
export PATH=$PATH:/usr/local/go/bin
