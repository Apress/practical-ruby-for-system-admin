class Toybox 
  include Enumerable 
  def each 
    yield toy while (toy = retrieve_toy) 
  end 
end 
