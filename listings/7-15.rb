def text(string) 
  return unless @to_read 

  if @to_read == "key" 
    raise "cannot use key as not within hash" unless @root.is_a?(Hash) 
    @root.next_key = string 
    return 
  end 

  object = case @to_read 
    when "data" then string.strip 
    when "integer" then string.to_i 
    when "real" then string.to_f 
    when "string" then string 
  end 

  add_object(object) 
end 