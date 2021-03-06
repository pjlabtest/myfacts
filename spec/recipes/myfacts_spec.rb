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
  
#  it 'check cmd' do
#    expect(chef_run).to \
#      run_execute('ls -al')
#  end

  it 'creates health.html' do
    expect(chef_run).to \
      create_cookbook_file('/var/www/html/health.html')
  end
 
  it 'creates test.html' do
    expect(chef_run).to \
      create_cookbook_file('/var/www/html/test.html')
  end

  it 'creates test1.html' do
    expect(chef_run).to \
      create_cookbook_file('/var/www/html/test1.html')
  end

  it 'starts a service apache2' do
    expect(chef_run).to start_service('apache2')
  end


  before do
    stub_command("grep text /tmp/foo.txt").and_return(true)
  end
end
