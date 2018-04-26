package "apache2" do
     action :install
end

execute 'Setting up GIT' do
      command "apt-get install -y git"
end


#  git clone https://github.com/BlackrockDigital/startbootstrap-sb-admin-2.git  	

execute 'Deployment of Dashboard Application' do
       command <<-EOH
       apt-get install -y git
       cd /var/www/html/
       rm -rf dashboard
       git clone https://github.com/ajayRLab/sampleSite.git 	
       mv sampleSite dashboard 
       EOH
end

#git "/var/www/html/site" do
#   repository "https://github.com/BlackrockDigital/startbootstrap-sb-admin-2.git"
#   action :sync
#end


service "apache2" do 
     action [ :enable, :start ]
end

