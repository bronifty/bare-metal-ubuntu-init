#!/bin/bash
source ./variables.sh
source ./script_dir.sh

# # download and install go
curl -fsSL -o go"${GOLANG_VERSION}".linux-amd64.tar.gz https://go.dev/dl/go"${GOLANG_VERSION}".linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go"${GOLANG_VERSION}".linux-amd64.tar.gz
# cleanup go
sudo rm go"${GOLANG_VERSION}".linux-amd64.tar.gz

cat << EOF >> ~/.bashrc
export PATH=\$PATH:/usr/local/go/bin
export GOPATH=\$(echo $(go env GOPATH))
export PATH=\$PATH:\$GOPATH/bin
EOF

source ~/.bashrc
which go

