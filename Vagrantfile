# -*- mode: ruby -*-
# vi: set ft=ruby :
HERE = File.join(File.dirname(__FILE__))

  Vagrant::Config.run do |config|
    config.vm.box     = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"


    config.vm.provision :shell, :inline => "sudo apt-get update --fix-missing"

    config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file  = "leiningen.pp"
      puppet.module_path  = "puppet/modules"
    end
  end
