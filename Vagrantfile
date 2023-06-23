Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.name = "Projeto-Vagrant-Ansible-Nginx"
  end



  config.vm.box = "ubuntu/focal64"
  config.vm.network "public_network", bridge: "Intel(R) Wi-Fi 6 AX201 160MHz"
  config.vm.network "forwarded_port", guest: 80, host: 8070
  config.vm.network "public_network", ip: "192.168.1.67"
  config.vm.provision "shell", path: "script.sh"
  config.vm.synced_folder "site/", "/var/www/html"
  config.vm.synced_folder "ansible/", "/ansible"


  config.vm.provision "ansible" do |ansible|
  ansible.playbook = "playbook.yml"
  end
  





end
