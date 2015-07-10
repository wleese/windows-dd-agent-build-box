# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "opentable/win-2012r2-standard-amd64-nocm"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.34.118"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "../cache", "C:/Users/vagrant/omnibus/cache"
  config.vm.synced_folder "../pkg", "C:/Users/vagrant/omnibus/pkg"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = "3072"
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Provisioning has never felt so cool with Berkshelf...
  # Yeah yeah, you got it right... we've actually got nothing to do :D
  # The ./Berksfile is automatically detected and used to provision the VM
  vagrant.vm.provision :chef_solo do |chef|
    chef.run_list = [
      "recipe[windows-dd-agent-build-box]"
    ]
  end
end
