require 'spec_helper'


describe 'myfacts site' do
   it 'responds on port 80' do
      expect(port 80).to be_listening 'tcp'
   end
  
   it 'returns Pradeep in the HTML body' do
      expect((command 'curl localhost:80').stdout).to match(/Pradeep/)
   end
end
