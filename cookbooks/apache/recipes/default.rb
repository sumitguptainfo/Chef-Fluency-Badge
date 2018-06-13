#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# Install apache package
if node['plateform_family'] == "rhel"
	package = "httpd"
elsif node['plateform_family'] == "debian"
	package = "apache2"
end 

package 'apache2' do
	package_name package
	action :install
end
service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end

