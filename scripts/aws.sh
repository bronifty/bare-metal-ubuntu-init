#!/bin/bash
source ./variables.sh
source ./script_dir.sh



# aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo DEBIAN_FRONTEND=noninteractive ./aws/install
sudo DEBIAN_FRONTEND=noninteractive rm -rf awscliv2.zip ./aws/