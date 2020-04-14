#
# Cookbook:: simple_http
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe  '::intall'
include_recipe '::services'

service 'httpd' do
  action [:enable, :start]
end
 


