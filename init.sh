#!/bin/bash
# Update and install necessary packages without interactive prompts
sudo DEBIAN_FRONTEND=noninteractive apt-get update -y && sudo DEBIAN_FRONTEND=noninteractive apt-get install -y git unzip wget lsof build-essential gnupg software-properties-common python3-pip snapd

# add a utility method for github
cat << EOF >> ~/.bashrc
alias gitpushmain="git branch -M main && git add . && git commit -am 'this' && git push -u origin main"
EOF

source ~/.bashrc




