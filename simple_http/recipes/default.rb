#
# Cookbook:: simple_http
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
['httpd','php'].each do |p|
package p do
    action :install
  end
end

service 'httpd' do
  action [:enable, :start]
end


