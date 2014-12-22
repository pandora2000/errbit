#
# Cookbook Name:: application-nginx
# Recipe:: default
#
# Copyright 2014, pandora2000
#
# All rights reserved - Do Not Redistribute
#

node.set['nginx']['repo_source'] = 'nginx'
node.set['nginx']['default_site_enabled'] = false

include_recipe 'nginx'

template "#{node['nginx']['dir']}/conf.d/ltsv.conf" do
  source 'ltsv.conf.erb'
  mode 0644
  notifies :restart, 'service[nginx]'
end

template "#{node['nginx']['dir']}/sites-available/errbit" do
  source 'site.erb'
  mode 0644
  notifies :restart, 'service[nginx]'
end

nginx_site 'errbit'
