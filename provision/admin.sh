#!/bin/bash

CHEFDK_PKG=chefdk_0.3.5-1_amd64.deb
CHEFDK_URI=https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64

curl -L ${CHEFDK_URI}/${CHEFDK_PKG} > /tmp/${CHEFDK_PKG}
dpkg -i /tmp/${CHEFDK_PKG}
