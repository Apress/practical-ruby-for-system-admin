require "soap/rpc/standaloneServer" 

class Cat 
  FLAVOURS = ["crunchy_frog", "asparagus_and_lentil"] 

  def initialize(name, weight_kg) 
    @name, @weight_kg = name, weight_kg 
    @last_stroked, @spayed = nil, false 
  end 

  def feed(flavour, weight_kg) 
    return "#{@name} is confused" unless FLAVOURS.include?(flavour) 
    @weight_kg += weight_kg 
    if @weight_kg < 10.0 then "#{@name} now weighs #{@weight_kg} kilos" 
    else "#{@name} has exploded" 
    end 
  end 

  def spay 
    @spayed = true 
    "#{@name} is decidedly vexed" 
  end 

  def stroke 
    @last_stroked = Time.now 
    "#{@name} purrs contentedly" 
  end 
end 

class TiddlesServer < SOAP::RPC:StandaloneServer 
  def on_init 
    tiddles = Cat.new("tiddles", 3.5) 
    add_method(tiddles, "feed", "flavour", "weight_kg") 
    add_method(tiddles, "spay") 
    add_method(tiddles, "stroke") 
  end 
end 

TiddlesServer.new("Tiddles", "http://cattery.example.com/ws").start 

