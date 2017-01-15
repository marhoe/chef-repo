Vagrant.configure("2") do |config|
	config.vm.box = "CentOS-7-x86_64-Vagrant-1611_01"
	config.vm.box_url = "http://cloud.centos.org/centos/7/vagrant/x86_64/images/CentOS-7-x86_64-Vagrant-1611_01.LibVirt.box"
	config.omnibus.chef_version = :latest
	config.berkshelf.enabled = true

	config.vm.provision :chef_client do |chef|
		chef.provisioning_path = "/etc/chef"
		chef.chef_server_url = "https://api.chef.io/organizations/nzl"
		chef.validation_key_path = ".chef/nzl-validator.pem"
		chef.validation_client_name = "nzl-validator"
		chef.node_name = "server"
	end
end

