class User < ActiveLdap::Base 
  ldap_mapping :dn_attribute => "uid", :prefix => "ou=users", 
               :classes => ["top", "posixAccount"], 
               :scope => LDAP::LDAP_SCOPE_ONELEVEL 
end 
