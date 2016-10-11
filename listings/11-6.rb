FileList.["*.c"].each do |f| 
  file f.sub(/c$/, "o") => f do |t| 
    sh "gcc", "-Wall", t.source, "-c", "-o", t.name 
  end 
end 
