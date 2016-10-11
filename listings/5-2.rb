File.open("/tmp/foo", "w") do |f| 
  if f.flock(File::LOCK_EX | File::LOCK_NB) 
    f.puts "I want to lock it all up in my pocket" 
    f.flock(File::LOCK_UN) 
  else warn "Couldn't get a lock - better luck next time" 
  end 
end 