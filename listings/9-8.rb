require "fileutils" 
require "remote_host" 
require "yaml" 

FileUtiles.mkdir_p("data") 
Dir.chdir("data") 
hosts_to_monitor = ["fishbrain.local", "fishwife.local"] 
hosts_to_monitor.each do |host| 
  logins = RemoteHost.new(host).last_logins 
  dump_file = host + Time.now.strftime(".%Y%m%dT%H%M%S.yaml") 
  File.open(dump_file, "w") { |f| YAML.dump(logins, f) } 
end 
