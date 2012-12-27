link "#{ENV['HOME']}/.emacs.d" do
  to "#{ENV['PWD']}/.."
end

directory "#{ENV['HOME']}/profile.d" do
  action :create
end

cookbook_file "#{ENV['HOME']}/profile.d/S50emacs" do
  source "S50emacs"
  backup false
end
