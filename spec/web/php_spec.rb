require 'spec_helper'


%w{php5-cli php5-mysql php5-common php5-redis php5-mcrypt php5-memcached php5-fpm}.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe service('php5-fpm') do
  it { should be_enabled }
  it { should be_running }
end

describe port(9000) do
  it { should be_listening }
end
