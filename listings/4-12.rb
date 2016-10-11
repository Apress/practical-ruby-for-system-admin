module Contactable 
  def self.append_features(klass) 
    super 
    klass.extend(Macros) 
  end 

  # the following declaration is erroneously given as 'def Macros'
  # in the first release of the book
  module Macros 
    def acts_as_contactable 
      extend ClassMethods 
      include InstanceMethods 
    end 
  end 

  module ClassMethods 
    # none to speak of 
  end 
  
  module InstanceMethods 
    # methods from listing 4-7 go here 
  end 
end 