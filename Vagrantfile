VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :screener do |screener|
    screener.vm.box = "ubuntu/trusty64"
    screener.vm.provision :shell, path: "bootstrap.sh"
  end
  
  config.vm.synced_folder "../interview-faq", "/screener"
end
