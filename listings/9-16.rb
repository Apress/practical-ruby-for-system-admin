require "graphviz" 
# code from Listing 9-12 modified as discussed (for indexing by host) would go here 
exit if users.empty? 
graph = Graphviz.new("G") 
users.each do |user, hosts| 
  graph.add_node(user) 
  hosts.each do |host, usage| 
    graph.add_node(host) 
    graph.add_edge(user, host, "weight" => usage) 
  end 
end 
graph.output("output" => "png", "file" => "/tmp/user_relationships.png") 
