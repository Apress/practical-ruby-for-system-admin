require "rexml/document" 

filename = ARGV[0] 
fail "specify an existing XML file" unless filename and File.exists?(filename) 

file = File.open(filename) 
doc = REXML::Document.new(file) 
file.close 
# do something with doc 
