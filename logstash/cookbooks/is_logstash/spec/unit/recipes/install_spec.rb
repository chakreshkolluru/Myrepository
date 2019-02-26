

require 'spec_helper'

describe 'is_logstash::install' do
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

    it 'unzip tar file' do
      expect(chef_run).to run_execute('unzip tar file')
    end

    it 'create logstash user' do
      expect(chef_run).to create_user('logstash')
    end
  end

  context 'When all attributes are default, on CentOS 7.4.1708' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.4.1708')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'unzip tar file' do
      expect(chef_run).to run_execute('unzip tar file')
    end

    it 'create logstash user' do
      expect(chef_run).to create_user('logstash')
    end
  end
end
