#!/bin/bash

apt-get update
apt-get install -y curl vim

cat <<'EOF' >> /etc/hosts
192.168.10.2 chef-server.vagrant.com chef-server
192.168.10.3 node1.vagrant.com node1
192.168.10.4 node2.vagrant.com node2
192.168.10.5 admin.vagrant.com admin
EOF
