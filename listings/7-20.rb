fred = User.new("fred") 
user.uid_number = 1014 
user.gid_number = 550 
user.home_directory = "/Network/Users/fred" 
raise fred.errors.full_messages.join(", ") unless fred.save 
