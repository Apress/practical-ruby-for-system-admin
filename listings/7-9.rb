require "rexml/document" 
require "rexml/streamlistener" 

class PListParser 
  include REXML::StreamListener 

  def initialize 
    # declare initial state variables 
  end 

  def tag_start(name, attributes) 
    # handle a start tag 
  end 

  def tag_end(name) 
    # handle an end tag 
  end 
  
  def text(string) 
    # handle some text 
  end 
end 
