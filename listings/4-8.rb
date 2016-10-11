module Extension 
  def where_am_i 
    p self 
  end 
end 

class Rabbit 
  include Extension 
end 

class Hat 
end 

# Objects 
Hat.new.where_am_i     # => [Exception raised] 
hat_extended = Hat.new 
hat_extended.extend(Extension) 
hat_extended.where_am_i    # => #<Hat:0x1087b44> 
Rabbit.new.where_am_i  # => #<Rabbit:0x4bab4> 

# Classes 
Hat.where_am_i         # => [Exception raised] 
Rabbit.where_am_i      # => [Exception raised]