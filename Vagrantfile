Vagrant.configure("2") do |config|
    config.vm.box = "hashicorp/bionic64"

    config.vm.synced_folder '.', '/vagrant', SharedFoldersEnableSymlinksCreate: false

    config.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 2
    end
    
    config.vm.provision "shell", inline: <<-SHELL
        sudo apt-get update
#         sudo apt-get upgrade -y
        sudo apt -y install docker.io
        sudo usermod -aG docker $USER
        sudo systemctl start docker
        sudo systemctl enable docker

        sudo apt-get install curl -y
        curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
        sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
        sudo apt-get install kubeadm kubelet kubectl -y
        sudo swapoff -a
    SHELL

    config.vm.define "kub1" do |kub1|
      kub1.vm.hostname = "kubernetes-1"
      kub1.vm.network :private_network, ip: "10.0.0.10"

#     config.vm.network "forwarded_port", guest: 4567, host: 4567
    end

    config.vm.define "kub2" do |kub2|
      kub2.vm.hostname = "kubernetes-2"
      kub2.vm.network :private_network, ip: "10.0.0.11"

#     config.vm.network "forwarded_port", guest: 4567, host: 4567
    end
end