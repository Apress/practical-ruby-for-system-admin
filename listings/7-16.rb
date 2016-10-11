def self.parse(source) 
  parser = new 
  REXML::Document.parse_stream(source, parser) 
  parser.root 
end 
