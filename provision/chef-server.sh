#!/bin/bash

CHEF_SERVER_PACKAGE=chef-server-core_12.0.1-1_amd64.deb

pushd /tmp &> /dev/null
wget https://web-dl.packagecloud.io/chef/stable/packages/ubuntu/trusty/${CHEF_SERVER_PACKAGE}
popd &> /dev/null

dpkg -i /tmp/${CHEF_SERVER_PACKAGE}

chef-server-ctl reconfigure

## Take a nap chef server doesn't become ready right away
sleep 10

## Make sure we get the newly generated credentials
rm -f /home/vagrant/.chef/admin.pem
rm -f /home/vagrant/.chef/validation.pem

chef-server-ctl user-create admin Jim Rosser admin@whocares.com benson --filename /home/vagrant/.chef/admin.pem
chef-server-ctl org-create bsorg My Bullshit Org --association_user admin --filename /home/vagrant/.chef/validation.pem


