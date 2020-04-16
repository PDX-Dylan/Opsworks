include_recipe '::services'

#node["deploy"]["appshortname"]["environment_variables"]["Portland"]

app = search(:aws_opsworks_app).first
city = app['environment']['Portland']


template '/var/www/html/index.php' do 
  source 'index.php.erb'
  variables(
    :city => city
  
)
  notifies :restart, resources(:service => 'httpd')
  not_if { File.exist?('/var/www/html/index.html') }
end 

template '/var/www/html/index.html' do  
  source 'index.html.erb'
  not_if { File.exist?('/var/www/html/index.php') }
end

 
