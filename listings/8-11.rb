def fish_count 
  get("/countfish.cgi") =~ /(\d+) <\/td> <TH>/ 
  $1.to_i 
end 
