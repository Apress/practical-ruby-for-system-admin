def rolecall(person1, person2 = "Dick", person3 = "Harry") 
  "#{person1}, #{person2} and #{person3}" 
end 

rolecall("Tom") # => "Tom, Dick and Harry" 
rolecall("George", 42) # => "George, 42 and Harry" 
