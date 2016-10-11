file_names = ARGV.select { |name| File.exist?(name) } 
fail "no existing files were specified" if file_names.empty? 

count = 0 
files_names.each do |name| 
  IO.readlines(name, "\n").each do |line| 
    count += 1 
    output = line.split("\t").join("\n") 
    File.open("/tmp/user_#{count}", "w") { |f| f.puts output } 
  end 
end 
