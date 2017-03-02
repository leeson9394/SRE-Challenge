#
# Cookbook Name:: sre_challenge
# Recipe:: firewall
#
# Copyright (c) 2017 The Authors, All Rights Reserved.


ports = [22, 80, 443]
firewall_rule "open ports #{ports}" do
  port ports
end

firewall 'default' do
  action :save
end
