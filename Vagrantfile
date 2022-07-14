Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/focal64"
  
    config.vm.provider :virtualbox do |v|
      v.gui = false
      v.memory = 4096
      v.cpus =2
    end
    config.ssh.forward_agent = true
    config.ssh.forward_x11 = true

    config.vm.provision :shell, path: "bootstrap.sh"
    config.vm.synced_folder ".", "/home/vagrant/.dotfiles"
end