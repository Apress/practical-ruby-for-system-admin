require "timeout" 

class TCPSocket 
  def self.can_connect?(ip, port, wait_secs = 5) 
    Timeout::timeout(wait_secs) { open(ip, port) } 
    return true 
  rescue 
    return false 
  end 
end 
