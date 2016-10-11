require "active_ldap" 

ActiveLDAP::Base.connect( 
  :host => "directory.imaginarycorp.com", 
  :base => "dc=imaginarycorp,dc=com" 
) 
