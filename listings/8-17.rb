require "net/ssh" 

Net::SSH.start(url, user, pass) do |ssh| 
  shell = ssh.shell.sync 
  puts shell.ruby("-v").stdout 
end 
