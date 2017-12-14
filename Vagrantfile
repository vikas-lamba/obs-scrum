# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure(2) do |config|
  #
  # Basic configuration
  #
  config.vm.box = "opensuse/openSUSE-42.2-x86_64"
  config.vm.hostname = "obs-scrum"
  config.vm.synced_folder ".", "/vagrant", owner: "vagrant", group: 100

 # Use 2Gb of RAM for Vagrant box (otherwise bundle will go to swap)
  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', 2048]
    vb.customize ['modifyvm', :id, '--cpus', 2]
    vb.destroy_unused_network_interfaces = true
  end

  #
  # Misc
  #
  config.ssh.forward_x11 = true
  config.ssh.forward_agent = true

  #
  # Provisioning
  #
  config.vm.provision :shell, path: "provisioning/bootstrap.sh"
end
