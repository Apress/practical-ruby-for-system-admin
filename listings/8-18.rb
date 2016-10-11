require "net/ssh" 

class RemoteHost 
  def initialize(url, user = root) 
    @shell = Net::SSH.start(url, user).shell.sync 
  end 

  def clear_dirs(*dirs) 
    dirs.each { |dir| @shell.send_command("rm -rf #{dir}/*") } 
  end 
end 
