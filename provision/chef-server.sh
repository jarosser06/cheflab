#!/bin/bash

CHEF_SERVER_PACKAGE=chef-server-core_12.0.1-1_amd64.deb

curl -L https://web-dl.packagecloud.io/chef/stable/packages/ubuntu/trusty/${CHEF_SERVER_PACKAGE} > /tmp/${CHEF_SERVER_PACKAGE}

dpkg -i /tmp/${CHEF_SERVER_PACKAGE}

chef-server-ctl reconfigure
sleep 10
chef-server-ctl user-create admin Jim Rosser admin@whocares.com benson --filename /home/vagrant/.chef/admin.pem
chef-server-ctl org-create bsorg My Bullshit Org --association_user admin --filename /home/vagrant/.chef/validation.pem
