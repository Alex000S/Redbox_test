Vagrant.configure("2") do |config|
  # Определение машины "manager"
  config.vm.define "manager" do |manager|
    manager.vm.hostname = "manager"
    manager.vm.network "private_network", ip: "192.168.56.15"

    # Используем официальный box с Vagrant Cloud
    manager.vm.box = "ubuntu/focal64"

    #manager.vm.network "forwarded_port", guest: 8080, host: 8080
    #manager.vm.network "forwarded_port", guest: 3000, host: 3000

    manager.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
  end
end
