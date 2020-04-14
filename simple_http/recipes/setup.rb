#
# Cookbook:: simple_http
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'simple_http::intall'
include_recipe 'simple_http::services'

service 'httpd' do
  action [:enable, :start]
end
 


