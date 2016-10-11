["fudge" => 12, "praline" => 32, "crispy-frog" => 1542].each do |name, stock| 
  dbh.do("INSERT INTO sweetmeats (name, stock) VALUES (?, ?)", name, stock) 
end 
