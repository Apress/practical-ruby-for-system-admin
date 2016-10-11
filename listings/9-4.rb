require "snmp" 
include SNMP 

Manager.open(:Host => "switch1.example.org") do |m| 
  vb = Varbind.new("sysName.0", OctetString.new("slartibartfast")) 
  m.set(vb) 
end 
