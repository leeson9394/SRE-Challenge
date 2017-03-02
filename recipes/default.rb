#
# Cookbook Name:: sre_challenge
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
#

package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

default['firewall']['allow_ssh'] = true
default['firewall']['firewalld']['permanent'] = true
default['sre_challenge']['open_ports'] = 80

template '/var/www/html/index.html' do
  source 'index.html.erb'
end


