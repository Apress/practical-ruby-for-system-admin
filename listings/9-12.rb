require "yaml" 

source_dir = ARGV[0] 
fail "couldn't find directory #{source_dir}" unless File.directory?(source_dir) 
users = {} 
Dir[File.join(source_dir, "*")].each do |file| 
  date_string = File.basename(file, ".yaml") 
  events = YAML.load_file(file) 
  events.each do |key, event| 
    duration = event[:duration].to_i 
    next unless duration > 0 
    user = (users[event[:user]] ||= Hash.new(0)) 
    user[date_string] += duration 
  end 
end 
