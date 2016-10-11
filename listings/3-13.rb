require "benchmark" 

class Goat 
  def initialize(name, smell) 
    @name = name 
    @smell = smell 
  end 
end 

Benchmark.bmbm do |b| 
  hash_goats, class_goats = [], [] 
  b.report("hash") do 
    100_000.times do 
      hash_goats << {:name => "George", :smells => "Terrible" } 
    end 
  end 
  b.report("class") do 
    100_000.times do 
      class_goats << Goat.new("George", "Terrible") 
    end 
  end 
end 
