
# Cookbook:: logstash
# Recipe:: install

user 'logstash' do
  action :create
end

remote_file 'logstash.tar.gz' do
  source "https://artifacts.elastic.co/downloads/logstash/logstash-#{node['version']}.tar.gz"
end

execute 'unzip tar file' do
  command 'tar -xvf logstash.tar.gz'
  action :run
end
