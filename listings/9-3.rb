columns = ["ifIndex", "ifDescr", "ifInOctets", "ifOutOctets"] 
SNMP::Manager.open(:Host => "switch1.example.org") do |m| 
  m.walk(columns) { |row| puts row.join("\t") } 
end 
