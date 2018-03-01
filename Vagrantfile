ENV["LC_ALL"] = "en_GB.UTF-8"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "8192"
    vb.cpus = 4
  end

  config.disksize.size = '50GB'
  config.vm.provision "shell", privileged: true, inline: <<-SHELL
    resize2fs /dev/sda1
  SHELL

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "./shared", "/vagrant", disabled: true,
    create: true, group: "vagrant", owner: "vagrant", SharedFoldersEnableSymlinksCreate: true 
  config.vm.synced_folder "./git", "/home/vagrant/git",
    create: true, group: "vagrant", owner: "vagrant", SharedFoldersEnableSymlinksCreate: true

  config.vm.network "private_network", ip: "192.168.59.101"

  config.vm.provision "file", source: "./provisioning/.zshrc", destination: "/home/vagrant/.zshrc"
  config.vm.provision "shell", privileged: true, path: "provisioning/setup.sh"  
  config.vm.provision "shell", privileged: false, keep_color: true, path: "provisioning/post-setup.sh"

end
