require "timeout" 

begin 
  Timeout::timeout(5) do 
    TCPSocket.open("www.example.com", 80) { |socket| ... } 
  end 
rescue 
  puts "something untoward happened - how bothersome" 
end 