rule ".o" => ".c" do |t| 
  sh "gcc", "-Wall", "-o", t.name, "-c", t.source 
end 
