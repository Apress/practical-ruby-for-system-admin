#!/usr/bin/ruby -w

Dir["**/**"].each do |f| 
  p f if File.ftype(f) == "file" and File.size("#{f}/..namedfork/rsrc") > 0 
end 
