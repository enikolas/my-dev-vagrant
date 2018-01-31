ENV["LC_ALL"] = "en_GB.UTF-8"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "10240"
    vb.cpus = 4
  end

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "./shared", "/vagrant", disabled: true,
    create: true, group: "vagrant", owner: "vagrant", SharedFoldersEnableSymlinksCreate: true 
  config.vm.synced_folder "./git", "/home/vagrant/git",
    create: true, group: "vagrant", owner: "vagrant", SharedFoldersEnableSymlinksCreate: true

  config.vm.network "private_network", ip: "192.168.59.101"

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y \
      apt-transport-https \
      ca-certificates \
      curl \
      software-properties-common \
      openjdk-8-jdk \
      maven \
      mariadb-client \
      git \
      git-svn \
      subversion
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    add-apt-repository \
      "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) \
      stable"
    apt-get update
    apt-get install -y docker-ce
    curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
    groupadd docker
    usermod -aG docker vagrant
  SHELL

  config.vm.provision "shell", privileged: false, keep_color: true, inline: <<-SHELL_AS_USER
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    nvm install 'lts/*'
  SHELL_AS_USER
end
