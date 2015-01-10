#!/bin/bash

CHEF_PKG=chef_12.0.3-1_amd64.deb

curl -L https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/13.04/x86_64/${CHEF_PKG} > /tmp/${CHEF_PKG}
dpkg -i /tmp/$CHEF_PKG
