# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-14.04"

  if Vagrant.has_plugin?('vagrant-cachier')
    config.cache.scope = :machine
  end

  config.vm.define 'server' do |server|
    server.vm.hostname = 'chef-server'
    server.vm.network 'private_network', ip: '192.168.10.2'
    server.vm.provision 'shell', path: 'provision/base.sh'
    server.vm.provision 'shell', path: 'provision/chef-server.sh'
  end
end
