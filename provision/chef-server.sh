#!/bin/bash

CHEF_SERVER_PACKAGE=chef-server-core_12.0.1-1_amd64.deb

curl -L https://web-dl.packagecloud.io/chef/stable/packages/ubuntu/trusty/${CHEF_SERVER_PACKAGE} > /tmp/${CHEF_SERVER_PACKAGE}

dpkg -i /tmp/${CHEF_SERVER_PACKAGE}

chef-server-ctl reconfigure
