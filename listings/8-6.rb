require "net/http" 

Net::HTTP.new("slashdot.org").get("/").each_header do |key, value| 
  next if key == "x-powered-by" or not key =~ /x-(.*)/ 
  puts "#{$1.capitalize} says #{value.inspect}" 
  break 
end 