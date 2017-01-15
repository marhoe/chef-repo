# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "mh_1"
client_key               "#{current_dir}/mh_1.pem"
chef_server_url          "https://api.chef.io/organizations/nzl"
cookbook_path            ["#{current_dir}/../cookbooks"]
validation_client_name	"nzl-validator"
validation_key		"#{current_dir}/nzl-validator.pem"


# Eigene Sachen

cookbook_copyright "your company"
cookbook_license "GPLv3"
cookbook_email "marcus.hoefner@web.de"
