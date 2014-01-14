# -*- mode: ruby -*-
# vi: set ft=ruby :
HERE = File.join(File.dirname(__FILE__))

Vagrant::Config.run do |config|
  config.vm.box     = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.define "clojure" do |cfg|
    #cfg.vm.forward_port 5432, 5432
    #cfg.vm.forward_port 80, 8080
  end
  config.vm.provision "shell", path: "provision.sh"
end
