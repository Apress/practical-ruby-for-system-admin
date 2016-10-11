def assign_event(event, bin_hash) 
  date_key = event[:date].strftime("%Y%m%d") 
  bin = (bin_hash[date_key] ||= {}) 
  event_key = event.values_at(:user, :device, :source, :date, :host).join(";") 
  bin[event_key] = event 
end 
