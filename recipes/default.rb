#
# Cookbook Name:: sre_challenge
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
#

include_recipe 'sre-challenge::firewall'
include_recipe 'sre-challenge::web'
include_recipe 'selinux::permissive'
