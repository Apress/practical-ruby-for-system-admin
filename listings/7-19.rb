class User < ActiveLdap::Base 
  # ldap_mapping line 
  belongs_to :groups, :class => "Group", :many => "memberUID" 
end 

class Group < ActiveLdap::Base 
  # ldap_mapping line 
  has_many :users, :class => "User", :wrap => "memberUID" 
end 
