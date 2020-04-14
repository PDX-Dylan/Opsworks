include_recipe 'simple_http::services'

template '/var/www/html/index.php' do 
  source 'index.php.erb'
  notifies :restart, resources(:service => 'httpd')
  not_if { File.exist?('/var/www/html/index.html') }
end 

template '/var/www/html/index.html' do  
  source 'index.html.erb'
  not_if { File.exist?('/var/www/html/index.php') }
end

 