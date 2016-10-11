File.open("/tmp/foo", "w") do |f| 
  f.flock(File::LOCK_EX) 
  f.puts "Locking is the key to ... pun interrupted" 
  f.flock(File::LOCK_UN) 
end 
