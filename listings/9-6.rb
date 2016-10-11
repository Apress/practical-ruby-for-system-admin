require "net/ssh" 
class RemoteHost 
  def initialize(url, user = root) 
    @shell = Net::SSH.start(url, user).shell.sync 
  end 
end 
