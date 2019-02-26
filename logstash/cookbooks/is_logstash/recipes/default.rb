#
# Cookbook:: logstash
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe 'stack-java::default'
include_recipe 'is_logstash::install'

template "/logstash-#{node['version']}/config/logstash.yml" do
  source 'logstash.yml.erb'
  action :create
end

template '/etc/systemd/system/logstash.service' do
  source 'logstash.service.erb'
  action :create
end

service 'logstash' do
  action [:enable, :start]
end
