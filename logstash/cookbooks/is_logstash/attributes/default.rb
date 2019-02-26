
## Attributes for install.rb recipe file

default['version'] = '6.6.0'

default['user'] = 'logstash'

default['logs'] = '/var/log/logstash'
default['data'] = '/var/lib/logstash'

default['http.host'] =  '127.0.0.1'
default['http.port'] =  '9600-9700'

default['node.name'] = 'Test'
