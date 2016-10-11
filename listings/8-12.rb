def status 
  body, info = get("/status.cgi"), {} 
  body.scan(/cannon-status"> <td> (\S*) <\/td> <td> (\S*) <\/td>/) do |k, v| 
    info[k] = v 
  end 
  return info 
end 
