#
# Cookbook Name:: myfacts
# Recipe:: default
# Author:: Pradeep Joshi
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

package "curl" do
     action :install
end

package "apache2"   do
     action :install
end

service "apache2" do 
     action [ :enable, :start ]
end

cookbook_file "/var/www/html/index.html" do
     source "index.html"
     mode "0644"
end


cookbook_file "/var/www/html/health.html" do
     source "health.html"
     mode "0644"
end

cookbook_file '/var/www/html/test.html' do
  source 'test.html'
  owner 'root'
  group 'root'
  mode '0755'
end

template '/tmp/foo.txt' do
  not_if 'grep text /tmp/foo.txt'
end


