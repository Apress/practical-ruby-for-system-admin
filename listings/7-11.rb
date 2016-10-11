def tag_start(name, attributes) 
  case name 
    when "plist" then @version = attributes["version"] 
    
    when "array" then add_object(PListArray.new) 
    when "dict" then add_object(PListHash.new) 

    when "data", "integer", "key", "real", "string" then @to_read = name
 
    else raise "unknown tag: #{name}" 
  end 
end
