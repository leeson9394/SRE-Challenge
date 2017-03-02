#
# Cookbook Name:: sre_challenge
# Recipe:: firewall
#
# Copyright (c) 2017 The Authors, All Rights Reserved.


include_recipe 'firewall::default'

ports = node['sre-challenge']['open_ports']
firewall_rule "open ports #{ports}" do
  port ports
end

firewall_rule 'redirect' do
  port ports
  command: redirect
end

firewall 'default' do
  action :save
end
