trap_thread = SNMP::TrapListener.new do |listener| 
  listener.on_trap_default do |trap| 
    # do something with trap 
  end 
end 
trap_thread.join 