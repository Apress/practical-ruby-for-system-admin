require "safe_file"  # this will be the code from Listing 5-4 

FIELDS = [:login, :password, :uid, :gid, :name, :homedir, :shell] 

File.open_safely("/etc/passwd") do |passwd| 
  users.each do |user| 
    passwd.puts user.values_at(*FIELDS).join(":") 
  end 
end 