#!/bin/bash

apt-get update
apt-get install -y curl

cat <<'EOF' >> /etc/hosts
192.168.10.2 chef-server
192.168.10.3 node1
192.168.10.4 node2
EOF
