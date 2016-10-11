# Models a user of our network filesystems 
class User 
  # A boolean determining whether the user can receive messages. 
  attr_accessor :accepts_messages 
  # The user's age in years. 
  attr_reader :age 

  # Find a User based on login. 
  # Return the User if one was found and if the password matches. 
  # Otherwise return nil. 
  def User.authenticate(login, password) 
  end 

  # Send the user a message (if the accepts_messages attribute is set to true). 
  def send_message(text) 
  end 
end 
