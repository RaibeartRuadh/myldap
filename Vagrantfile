home = ENV['HOME']
ENV["LC_ALL"] = "en_US.UTF-8"
 
Vagrant.configure(2) do |config|

    config.vm.box = "centos/7"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = 4096
	  vb.cpus = 2
    end

    config.vm.define "ipaserver" do |box| #ipa-srv
        
        box.vm.hostname = "ipaserver"
        box.vm.network :private_network, ip: "192.168.56.10"
        box.vm.provision "shell", path: "config/server.sh" 
        box.vm.provision "ansible" do |ansible|
            ansible.playbook = "playbooks/ipaserver.yml"
        end
    end

    config.vm.define "ipaclient" do |box|
        box.vm.hostname = "ipaclient"
        box.vm.network :private_network, ip: "192.168.56.20"
        box.vm.provision "shell", path: "config/client.sh"
        box.vm.provision "ansible" do |ansible|
            ansible.playbook = "playbooks/ipaclient.yml"
        end
    end
end

