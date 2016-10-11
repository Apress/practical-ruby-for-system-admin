class User < ActiveRecord::Base 
  acts_as_list 
  belongs_to :company 
  verifies_inclusion_of :office, :in => ["Geneva", "Paris", "Rome"] 
end 
