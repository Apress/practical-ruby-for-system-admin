SNMP::Manager.open(:Host => "switch1.example.org") do |m| 
  response = m.get(["sysLocation.0", "sysUpTime.0"]) 
  response.each_varbind { |vb| puts "#{vb.name}: #{vb.value}" } 
end 
