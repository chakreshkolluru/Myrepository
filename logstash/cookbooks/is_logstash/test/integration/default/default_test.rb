# # encoding: utf-8

# Inspec test for recipe logstash::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe user('logstash') do
  it { should exist }
end

# This is an example test, replace it with your own test.

describe service('logstash') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
