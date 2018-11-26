# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
 
 config.vm.network :forwarded_port, guest: 8000, host: 8000

 config.vm.provider "virtualbox" do |vb|
  # Display the VirtualBox GUI when booting the machine
  vb.gui = false
  
  # Customize the amount of memory on the VM:
  vb.name = "ubu-django-bloggy"
  vb.memory = "1024"
  vb.cpus = 1
 end
 
 config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
 
 # install some base packages
 config.vm.provision :shell, :path => "provision.sh"
 
 end