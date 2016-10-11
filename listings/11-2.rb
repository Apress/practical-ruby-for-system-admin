file "index.yaml" => ["hosts.txt", "users.txt", "groups.txt"] do 
  ruby "build_index.rb" 
end 
