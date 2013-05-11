require 'etc'

file_cache_path "/tmp/chef-#{Etc.getpwuid(Process.uid).name}"
Chef::Config[:cache_options][:path] = "/tmp/chef-#{Etc.getpwuid(Process.uid).name}/checksum"
cookbook_path "#{Dir.pwd}/cookbooks"
