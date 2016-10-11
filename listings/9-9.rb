DAY_INDEX, NOW = {}, Time.now 
["Mon", "Tue", "Wed", "Thu", "Fri", "Sat, "Sun"].each_with_index do |day, i| 
  DAY_INDEX[day] = i + 1 
end 

def parse_event(login_fields, host) 
  user, device, source, date_info = login_fields 
  date_info =~ /^(...) (.){12}/ 
  wday, date = DAY_INDEX[$1], Time.parse($2) 
  while wday != date.wday or date > NOW 
    date = Time.local(date.year - 1, date.month, date.day, date.hour, date.min) 
  end 
  duration = nil 
  if date_info =~ /\((\d+\+)?(\d+):(\d+)\)$/ 
    days, hours, mins = $1, $2, $3 
    duration = mins + hours * 60 + days.to_i * 24 * 60 
  end 
  {:user => user, :device => device, :source => source, 
   :date => date, :duration => duration, :host => host} 
end 