Vagrant.configure("2") do |config|
    config.vm.define "kub1" do |kub1|
      kub1.vm.box = "hashicorp/bionic64"
      kub1.vm.hostname = "kubernetes-1"

#     config.vm.network "forwarded_port", guest: 4567, host: 4567
#     config.vm.network "forwarded_port", guest: 4569, host: 4569
#     config.vm.network "forwarded_port", guest: 4572, host: 4572
#     config.vm.network "forwarded_port", guest: 4574, host: 4574
#     config.vm.network "forwarded_port", guest: 4593, host: 4593

      kub1.vm.synced_folder '.', '/vagrant', SharedFoldersEnableSymlinksCreate: false

      kub1.vm.provision "shell", inline: <<-SHELL
        sudo apt-get update
      SHELL
    end

    config.vm.define "kub2" do |kub2|
      kub2.vm.box = "hashicorp/bionic64"
      kub2.vm.hostname = "kubernetes-2"

#     config.vm.network "forwarded_port", guest: 4567, host: 4567
#     config.vm.network "forwarded_port", guest: 4569, host: 4569
#     config.vm.network "forwarded_port", guest: 4572, host: 4572
#     config.vm.network "forwarded_port", guest: 4574, host: 4574
#     config.vm.network "forwarded_port", guest: 4593, host: 4593

      kub2.vm.synced_folder '.', '/vagrant', SharedFoldersEnableSymlinksCreate: false

      kub2.vm.provision "shell", inline: <<-SHELL
        sudo apt-get update
      SHELL
    end
end