def method_missing(symbol, *args) 
  if symbol.to_s =~ /^find_by_(\w+)$/ 
    fields = $1.split("_and_") 
    # build a query based on the fields and values (args) 
  else super 
  end 
end 