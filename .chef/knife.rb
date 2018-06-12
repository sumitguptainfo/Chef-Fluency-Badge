# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "sumit"
client_key               "#{current_dir}/sumit.pem"
chef_server_url          "https://techninjas20185.mylabserver.com/organizations/linuxyacademy"
cookbook_path            ["#{current_dir}/../cookbooks"]
