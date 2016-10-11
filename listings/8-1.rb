attempts = 0 
begin 
  attempts += 1 
  TCPSocket.open("www.example.com", 80) { |socket| ... } 
rescue 
  if attempts < 3 then sleep 5 and retry 
  else puts "I've had enough of this" 
  end 
end 