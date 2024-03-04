#!/bin/bash
source ./variables.sh

# nats-server-v2.11.0-preview.1-386.deb 
go install github.com/nats-io/nats-server/v2@latest

cat << EOF >> ~/.bashrc
export GOPATH=/home/bro/go
export PATH=$PATH:$GOPATH/bin
EOF

