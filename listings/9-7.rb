def last_logins 
  logins = [] 
  @shell.send_command("last").stdout.each do |line| 
    line.chomp! 
    fields = [line[0,8], line[10,8], line[19,15], line[36..-1]] 
    next if fields.include?(nil) 
    logins << fields.map { |field| field.strip } 
  end 
  logins 
end 
