Vagrant.configure("2") do |config|
    config.vm.box = "hashicorp/bionic64"

    config.vm.synced_folder '.', '/vagrant', SharedFoldersEnableSymlinksCreate: false

    config.vm.provision "shell", inline: <<-SHELL
        sudo apt-get update
#         sudo apt-get upgrade -y
        sudo apt -y install docker.io
        sudo usermod -aG docker $USER
        sudo systemctl start docker
        sudo systemctl enable docker
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