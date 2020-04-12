#
# Cookbook:: simple_http
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

template '/var/www/html/index.html' do  
  source 'index.html.erb'
end