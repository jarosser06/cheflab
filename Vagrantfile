# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-14.04"

  if Vagrant.has_plugin?('vagrant-cachier')
    config.cache.scope = :machine
  end

  config.vm.define 'admin' do |admin|
    admin.vm.hostname = 'admin'
    admin.vm.network 'forwarded_port', guest: 443, host: 8443
    admin.vm.network 'private_network', ip: '192.168.10.5'
    admin.vm.provision 'shell', path: 'provision/base.sh'
    admin.vm.provision 'shell', path: 'provision/admin.sh'
    admin.vm.synced_folder './chef', '/home/vagrant/.chef'
  end

  config.vm.define 'server' do |server|
    server.vm.hostname = 'chef-server'
    server.vm.network 'private_network', ip: '192.168.10.2'
    server.vm.provision 'shell', path: 'provision/base.sh'
    server.vm.provision 'shell', path: 'provision/chef-server.sh'
    server.vm.synced_folder './chef', '/home/vagrant/.chef'
  end

  config.vm.define 'node' do |node|
    node.vm.hostname = 'node1'
    node.vm.network 'private_network', ip: '192.168.10.3'
    node.vm.provision 'shell', path: 'provision/base.sh'
    node.vm.provision 'shell', path: 'provision/node.sh'
  end
end
