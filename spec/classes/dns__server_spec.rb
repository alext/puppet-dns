require 'spec_helper'

describe 'dns::server' do
    let(:facts) {{ :osfamily => 'Debian', :concat_basedir  => '/dne' }}

    it { should contain_class('dns::server::install') }
    it {
      should contain_class('dns::server::config')
        .that_requires('Class[dns::server::install]')
    }
    it { should contain_class('dns::server::service') }
end
