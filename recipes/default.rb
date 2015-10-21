#
# Cookbook Name:: myfacts
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

package "curl" do
     action :install
end

package "apache2" do
     action :install
end

service "apache2" do 
     action [ :enable, :start ]
end

cookbook_file "/var/www/html/index.html" do
     source "index.html"
     mode "0644"
end
