require "rexml/document" 
require "rexml/streamlistener" 
include REXML 

class Streamer 
  include StreamListener 

  def tag_start(name, attributes) 
    puts "[start] #{name}: #{attributes.inspect}" 
  end 

  def tag_end(name) 
    puts "[end] #{name}" 
  end 
  
  def text(string) 
    p string 
  end 
end 
