# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :db do |db_config|
    db_config.vm.box = "precise64"

    db_config.vm.network :hostonly, '10.0.1.2'

    # PostgreSQL
    db_config.vm.forward_port 5432, 15432

    db_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file  = "db.pp"
      puppet.module_path    = "puppet/modules"
    end
  end

  config.vm.define :web do |web_config|
    web_config.vm.box = "precise64"

    web_config.vm.network :hostonly, '10.0.1.3'

    # nginx
    web_config.vm.forward_port 80, 18080

    web_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file  = "web.pp"
      puppet.module_path    = "puppet/modules"
    end
  end

end
