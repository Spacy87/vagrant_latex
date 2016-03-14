# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

current_dir = File.dirname(File.expand_path(__FILE__))
configs = YAML.load_file("#{current_dir}/config.yaml")
vagrant_config = configs['configs']
extra_provision_path = vagrant_config['extra_provision_location']

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision "shell", path: vagrant_config['basic_provision']
  vagrant_config['extra_provision'].each do |i|
    config.vm.provision "shell", path: "#{extra_provision_path}/#{i}"
  end

  
end
