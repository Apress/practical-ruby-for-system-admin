seconds_per_ip = 60 * 60 * 24 / 254.0 

File.open("config.txt", "w") do |f| 
  1.upto(254) do |d| 
    seconds = (d - 1) * seconds_per_ip 
    hrs = seconds / (60 * 60) 
    mins = (seconds / 60) % 60 
    secs = seconds % 60 
    f.puts "1.2.3.#{d} " + sprintf("%.2i:%.2i:%.2i", hrs, mins, secs) 
  end 
end 
