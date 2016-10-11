task :default => "cool_app" 

o_files = FileList["*.c"].exclude("main.c").sub(/c$/, "o") 

file "cool_app" => o_files do |t| 
  sh "gcc", "-Wall", "-o", t.name, *(t.sources) 
end 

rule ".o" => ".c" do |t| 
  sh "gcc", "-Wall", "-o", t.name, "-c", t.source 
end 
