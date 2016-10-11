require "rexml/document" 
include REXML 

string = <<EOF 
  <enctext encoding="to_i_32"> 
    <word>14476545457114006</word> 
    <word>604</word> 
    <word>16155</word> 
    <word>764273404</word> 
  </enctext> 
EOF 

doc = Document.new(string) 
# do something with doc 
