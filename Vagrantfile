MASTER_COUNT = 1
IMAGE = "debian/buster64"
Vagrant.configure("2") do |config|

  (1..MASTER_COUNT).each do |i|
    config.vm.define "k8s" do |k8s|
      k8s.vm.box = IMAGE
      k8s.vm.hostname = "k8s"
      k8s.vm.network  :private_network, ip: "10.0.0.1"
      #k8s.vm.provision "file", source: "./.ssh/id_rsa.pub", destination: "/tmp/id_rsa.pub"
      #k8s.vm.provision "file", source: "./.ssh/id_rsa", destination: "/tmp/id_rsa"
      k8s.vm.provision "file", source: "./scripts", destination: "/tmp/scripts"
      k8s.vm.provision "shell", privileged: true,  path: "scripts/install.sh"
    end
  end
end