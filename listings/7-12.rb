class PListArray < Array 
  attr_accessor :parent 

  alias :add_object :push 
end 

class PListHash < Hash 
  attr_accessor :next_key, :parent 

  def add_object(object) 
    raise "no key set" unless @next_key 
    self[@next_key] = object 
    @next_key = nil 
  end 
end 
