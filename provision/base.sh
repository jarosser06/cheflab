#!/bin/bash

apt-get update
apt-get install -y curl vim wget

yes vagrant | passwd root

cat <<'EOF' >> /etc/hosts
192.168.10.2 chef-server.vagrantup.com chef-server
192.168.10.3 node1.vagrantup.com node1
192.168.10.4 node2.vagrantup.com node2
192.168.10.5 admin.vagrantup.com admin
EOF

mkdir -p /root/.ssh/authorized_keys
cat <<'EOF' > /root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDR26lNGfVuDMJZFmxJkdmF9CfJ7PKkqk0A5Eqedxn7ISQj37hPigVGDpcr7I8QOsrmdgkIp6W/t6TfxmT5lAoEr3WEVwKoxQPsrjYRQkPIDW3hoXUHbdhlelhsrm6o1A9LFUfsFzGXQKvWUG14/hJdFDL1NGdMbu2FmCHcLx3forNQKlhkz27puxMQfuvpU7pRCR/KXAlQaOrDuuxIDWQLV+7Z9F5jhTiBBp+hrmkKa3961Yqq4F4VnbpyCMP/g699KdEc3tztwgjoHv2x7oOiDFaRgL1ioypH8i7rx4LE2cUkOUdr8saRw+VRsegsRqffFSUSyqwQCVnXPTfQmwrX root@chef-server
EOF
