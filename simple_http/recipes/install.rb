['httpd','php'].each do |p|
package p do
    action :install
  end
end