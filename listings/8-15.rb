require "socket" 

server = TCPServer.new(34891) 
sockets = [server] 

loop do 
  read_ready, write_ready, error_ready = IO.select(sockets) 
  read_ready.each do |socket| 
    if socket == server then sockets << server.accept 
    else 
      command = socket.readline.chomp 
      if command =~ /^([\d\.]+) ([\+-\/\*]) ([\d\.]+)$/ 
        # etc... 
      end 
      socket.close 
      sockets.delete(socket) 
    end 
  end 
end 
