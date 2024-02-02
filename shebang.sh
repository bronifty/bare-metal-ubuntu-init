#!/bin/bash
# bash variables
export NATS_SERVER_VERSION="2.10.9"
export NATS_CLI_VERSION="0.1.1"
export GOLANG_VERSION="1.21.6"
export ARCH="$(uname -m)"

#download nats-server unzip and cp to /usr/local/bin
curl -L https://github.com/nats-io/nats-server/releases/download/v"${NATS_SERVER_VERSION}"/nats-server-v"${NATS_SERVER_VERSION}"-linux-amd64.zip -o nats-server.zip
sleep 5
unzip -o nats-server.zip -d nats-server-dir
cp nats-server-dir/nats-server-v"${NATS_SERVER_VERSION}"-linux-amd64/nats-server /usr/local/bin/
# cleanup nats-server
rm -rf nats-server.zip nats-server-dir

# download and install nats client
curl -fsSL -o nats-cli.deb https://github.com/nats-io/natscli/releases/download/v"${NATS_CLI_VERSION}"/nats-"${NATS_CLI_VERSION}"-amd64.deb 
dpkg -i nats-cli.deb
# cleanup nats client
rm nats-cli.deb

# download and install go
curl -fsSL -o go"${GOLANG_VERSION}".linux-amd64.tar.gz https://go.dev/dl/go"${GOLANG_VERSION}".linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go"${GOLANG_VERSION}".linux-amd64.tar.gz
# cleanup go
rm go"${GOLANG_VERSION}".linux-amd64.tar.gz

cat << EOF >> ~/.bashrc
export PATH=\$PATH:/usr/local/go/bin
EOF

source ~/.bashrc