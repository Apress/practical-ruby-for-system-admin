def tag_end(name) 
  if @to_read then @to_read = nil 
  else @root = @root.parent || @root 
  end 
end 
