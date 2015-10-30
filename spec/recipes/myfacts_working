require 'chefspec'
require 'chefspec/berkshelf'
require 'spec_helper'

#Chefspec::converge.start!
at_exit { ChefSpec::Coverage.report! }

describe 'myfacts::default' do
  let(:chef_run) \
  { ChefSpec::ServerRunner.new.converge(described_recipe) }
  it 'installs apache2' do
    expect(chef_run).to install_package('apache2')
  end 
  it 'creates index.html' do
    expect(chef_run).to \
      create_cookbook_file('/var/www/html/index.html')
  end

  it 'creates health.html' do
    expect(chef_run).to \
      create_cookbook_file('/var/www/html/health.html')
  end
 
  it 'creates test.html' do
    expect(chef_run).to \
      create_cookbook_file('/var/www/html/test.html')
  end

  before do
    stub_command("grep text /tmp/foo.txt").and_return(true)
  end
end
