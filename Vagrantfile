VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "chef/centos-6.5"

  config.vm.network :forwarded_port, guest: 3306, host: 33066

  config.vm.network :forwarded_port, guest: 80, host: 8081

  config.vm.synced_folder ".", "/vagrant", mount_options: ['dmode=777','fmode=666']

  config.vm.provision :shell, path: "vagrant/bootstrap.sh"

end
