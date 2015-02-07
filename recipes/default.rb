#
# Cookbook Name:: awesome_app
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do 
  content '<html><body><h1>Hello from Chef!!!</h1></body></html>'
  owner 'root'
  group 'root'
  mode '0644'
end

service 'httpd' do
  action [:enable, :start]
end


