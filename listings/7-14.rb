private 
def add_object(object) 
  @root.add_object(object) if @root 
  if object.is_a?(Array) or object.is_a?(Hash) 
    object.parent = @root 
    @root = object 
  end 
end 
