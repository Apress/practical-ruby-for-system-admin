require "scruffy" 
include Scruffy 

# code from Listing 9-12 would go here 
exit if users.empty? 

all_dates = users.map { |user, dates| dates.keys }.flatten.uniq.sort 
graph = Graph.new(:point_markers => all_dates) 
graph.title = "Total Login Minutes per User" 
users.each do |user, dates| 
  all_values = all_dates.map { |date| dates[date].to_i } 
  graph.add(:line, user, all_values) 
end 
graph.render(:as => "PNG", :width => 1024, :to => "/tmp/user_accounting.png") 
