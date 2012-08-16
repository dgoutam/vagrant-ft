# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant::Config.run do |config|
   config.vm.box = "lucid32"
   config.vm.boot_mode = :headless
  
   config.vm.forward_port 80,    8080
   config.vm.forward_port 8080,    8081
  
   config.vm.forward_port 55672, 55672
  
   config.vm.provision :chef_solo do |chef|
     chef.cookbooks_path = "./cookbooks"
     chef.roles_path = "./roles"
     chef.add_recipe "java"
     chef.add_role "java"
     chef.add_recipe "apt"
     chef.add_recipe "tomcat"
     chef.add_role "tomcat"

   end
  
end

