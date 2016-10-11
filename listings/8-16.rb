require "socket" 

server = TCPServer.new(34891) 
while (session = server.accept) 
  Thread.new(session) do |s| 
    command = s.readline.chomp 
    if command =~ /^([\d\.]+) ([\+-\/\*]) ([\d\.]+)$/ 
      x, y = $1.to_f, $3.to_f 
      result = case $2 
        when "+" then x + y 
        when "-" then x - y 
        when "*" then x * y 
        when "/" then y == 0 ? "inf" : x / y 
      end 
      s.puts "= #{result}" 
    end 
    s.close 
  end 
end 
