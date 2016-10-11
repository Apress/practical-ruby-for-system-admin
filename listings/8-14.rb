require "socket" 

server = TCPServer.new(34891) 
while (session = server.accept) 
  command = session.readline.chomp 
  if command =~ /^([\d\.]+) ([\+-\/\*]) ([\d\.]+)$/ 
    x, y = $1.to_f, $3.to_f 
    result = case $2 
      when "+" then x + y 
      when "-" then x - y 
      when "*" then x * y 
      when "/" then y == 0 ? "inf" : x / y 
    end 
    session.puts "= #{result}" 
  end 
  session.close 
end 
