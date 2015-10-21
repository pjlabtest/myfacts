require 'spec_helper'
require 'chefspec'

describe 'myfacts::default' do
   let(:chef_run) \
   { ChefSpec::ServerRunner.new.converge(described_recipe) }

   it 'installs myfacts' do
      expect(chef_run).to install_package('apache2')
   end
end


