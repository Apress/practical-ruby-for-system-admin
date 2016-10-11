require "socket" 

server = TCPServer.new(34891) 
while (session = server.accept) 
  session.puts "Kindly leave me alone" 
  session.close 
end 
