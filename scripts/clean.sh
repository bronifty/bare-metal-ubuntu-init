#!/bin/bash
source variables.sh

sudo rm -rf $(dirname $(which nats-server))
sudo rm -rf $(dirname $(which nats))
sudo rm -rf $(dirname $(which go))
sudo rm -rf $(dirname $(which nex))

