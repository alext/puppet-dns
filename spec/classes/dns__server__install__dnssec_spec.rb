require 'spec_helper'

describe 'dns::server::install::dnssec', :type => :class do
  context "on an unsupported OS" do
    it{ should raise_error(/dns::server is incompatible with this osfamily/) }
  end

  context "on a Debian OS" do
    let(:facts) {{ :osfamily => 'Debian' }}

    it { should contain_package('dnssec-tools') }
  end

end

