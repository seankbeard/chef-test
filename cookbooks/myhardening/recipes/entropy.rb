#Install rng-tools
package 'rng-tools' do
    action :install
  end

#Set entropy to be >1000
execute "Fix Entropy Value" do
    command "rngd -r /dev/urandom"
  end

