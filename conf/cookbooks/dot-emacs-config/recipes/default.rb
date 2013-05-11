link "#{ENV['HOME']}/.emacs.d" do
  to "#{ENV['PWD']}/.."
end

directory "#{ENV['HOME']}/.profile.d" do
  action :create
end

link "#{ENV['HOME']}/.profile.d/S50emacs" do
  to "#{ENV['PWD']}/cookbooks/dot-emacs-config/files/default/S50emacs"
end

directory "#{ENV['HOME']}/local/stow/sbt/lib" do
  recursive true
  action :create
end

execute "Install SBT" do
  command "wget http://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch//0.12.1/sbt-launch.jar -O #{ENV['HOME']}/local/stow/sbt/lib/sbt-launch.jar"
  creates "#{ENV['HOME']}/local/stow/sbt/lib/sbt-launch.jar"
end

directory "#{ENV['HOME']}/local/bin" do
  recursive true
  action :create
end

file "#{ENV['HOME']}/local/bin/sbt" do
  content "#!/bin/sh\njava -Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=384M -jar #{ENV['HOME']}/local/stow/sbt/lib/sbt-launch.jar \"$@\""
  mode 0755
end
