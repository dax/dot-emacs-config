if platform?("debian")
  execute "Update APT" do
    command "apt-get update"
    action :nothing
  end
  file "/etc/apt/sources.list.d/java.list" do
    content "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main"
    notifies :run, "execute[Update APT]" 
  end
  execute "install java APT key" do
    command "apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886"
    only_if "! (apt-key list | grep \"EEA14886\")"
    notifies :run, "execute[Update APT]", :immediately
  end
  package "oracle-jdk7-installer"
else
  package "sbt"
end
