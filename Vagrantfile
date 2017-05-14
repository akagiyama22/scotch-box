# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "scotch/box"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.hostname = "scotchbox"
    config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]
    
    # Optional NFS. Make sure to remove other synced_folder line too
    #config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }
    # case fuelphp
    config.vm.synced_folder "../", "/var/www/", :owner => "vagrant", :group => "vagrant"

    config.vm.provision "shell", path: "scripts/install_php_7.sh"
    config.vm.provision "shell", path: "scripts/upgrade_mysql_to_56.sh"
    config.vm.provision "shell", path: "scripts/install_phpmyadmin.sh"

	# config.vm.provision "shell", inline: <<-SHELL
	# SHELL

end
