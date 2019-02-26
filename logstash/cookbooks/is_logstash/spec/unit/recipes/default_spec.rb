#
# Cookbook:: logstash
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'is_logstash::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '18.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'includes the install recipe' do
      expect(chef_run).to include_recipe('is_logstash::install')
    end

    it 'includes the stack-java recipe' do
      expect(chef_run).to include_recipe('stack-java::default')
    end

    it 'enables the logstash service' do
      expect(chef_run).to enable_service 'logstash'
    end

    it 'starts the logstash service' do
      expect(chef_run).to start_service 'logstash'
    end
  end

  context 'When all attributes are default, on CentOS 7.4.1708' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'includes the install recipe' do
      expect(chef_run).to include_recipe('is_logstash::install')
    end

    it 'includes the stack-java recipe' do
      expect(chef_run).to include_recipe('stack-java::default')
    end

    it 'enables the logstash service' do
      expect(chef_run).to enable_service 'logstash'
    end

    it 'starts the logstash service' do
      expect(chef_run).to start_service 'logstash'
    end
  end
end
