require "yaml" 

data_dir = (ARGV[0] || "data") 
fail "couldn't find directory #{data_dir}" unless File.directory?(data_dir) 

Dir.chdir(data_dir) 
Dir.mkdir("processed") unless File.directory?("processed")
 
# code from Listings 9-9 and 9-10 would go here 
data_files, periods = DIR["*.yaml"], {} 
data_files.each do |file| 
  host = File.basename(file).split(".").first 
  logins = YAML.load_file(file) 
  logins.each do |login| 
    event = parse_event(login, host) 
    assign_event(event, periods) 
  end 
end 
periods.each do |date_string, events| 
  event_file = File.join("processed", date_string + ".yaml") 
  if File.exist?(event_file) 
    old_events = YAML.load_file(event_file) 
    events = old_events.merge(events) 
  end 
  File.open(event_file, "w") { |f| YAML.dump(events, f) } 
end 
File.delete(data_files) 
