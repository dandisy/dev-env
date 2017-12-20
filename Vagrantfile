# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	
	# Specify the base box
	config.vm.box = "ubuntu/xenial64"

	# Setup the hostname
	config.vm.hostname = "dandisy-dev-env"
	
	# Setup port forwarding
	config.vm.network "forwarded_port", guest: 80, host: 6060

	# Setup internal network
	config.vm.network "private_network", ip: "192.168.60.60"

	# Setup public network
	# config.vm.network "public_network", ip: "192.168.90.90"

    # Share an additional folder to the guest VM
    config.vm.synced_folder "./provision/src", "/var/www"
    config.vm.synced_folder "./www", "/var/www/html"

    # Provider-specific configuration
    config.vm.provider "virtualbox" do |v|
    	v.name = "DandiSy-Dev-Env"
    	v.customize ["modifyvm", :id, "--memory", "1024"]
    end

    # Shell provisioning
    config.vm.provision "shell" do |s|
    	s.path = "provision/setup.sh"
    end

end