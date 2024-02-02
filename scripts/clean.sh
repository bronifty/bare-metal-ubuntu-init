#!/bin/bash
source variables.sh

rm -rf $(dirname $(which firecracker))
rm -rf $(dirname $(which nats-server))
rm -rf $(dirname $(which nats))
rm -rf $(dirname $(which go))
rm -rf $(dirname $(which nex))


