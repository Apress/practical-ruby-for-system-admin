while gets 
  $F = split 
  open("/tmp/user_#{$.}", "w") { |f| f.puts $F } 
end 
