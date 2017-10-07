require 'spec_helper'

describe 'docker::compose', :type => :class do
  it { is_expected.to compile }

  let(:facts) { {
    :kernel                    => 'Linux',
    :osfamily                  => 'Debian',
    :operatingsystem           => 'Ubuntu',
    :lsbdistid                 => 'Ubuntu',
    :lsbdistcodename           => 'maverick',
    :kernelrelease             => '3.8.0-29-generic',
    :operatingsystemrelease    => '10.04',
    :operatingsystemmajrelease => '10',
  } }

  context 'using default parameters ' do
    it { should contain_file('/usr/local/bin/docker-compose').with_content(/IMAGE=docker\/compose/) }
  end

end
