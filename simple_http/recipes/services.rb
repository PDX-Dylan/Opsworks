
service 'httpd' do
   
case node[:platform]
  when 'centos', 'redhat', 'fedora', 'amazon', 'amazon2'
    supports :restart => true, :reload => true, :status => true, :enable => true
end 
  action :nothing
end
