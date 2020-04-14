include_recipe '::services'

#city = search("aws_opsworks_app", "environment:Portland").first
app = search(:aws_opsworks_app).first
city = app['environment']['Portland']
source = app['app_source']['url']


template '/var/www/html/index.php' do 
  source 'index.php.erb'
  variables(
    :city => city,
    :app => source
  
)
  notifies :restart, resources(:service => 'httpd')
  not_if { File.exist?('/var/www/html/index.html') }
end 

template '/var/www/html/index.html' do  
  source 'index.html.erb'
  not_if { File.exist?('/var/www/html/index.php') }
end

 