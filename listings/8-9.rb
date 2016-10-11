def load_fish(name) 
  post("/loadfish.cgi", "name" => name) 
end 

def point_cannon(degrees, metres) 
  post("/movebarrel.cgi", "degrees" => degrees, "metres" => metres) 
end 

def fire 
  post("/fire.cgi") 
end 
