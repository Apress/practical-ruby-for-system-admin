require "csv" 

file_name = ARGV[0] 
fail "no existing file specified" unless File.exist?(file_name) 

records = [] 
CSV.open(file_name, "r") do |record| 
  records << record.values_at(0, 1, 3) 
  records << record.values_at(2, 4, 5) 
end 

# some global data-checking here, perhaps 

CSV.open("#{file_name}.new", "w") do |output| 
  records.each { |record| output << record } 
end 
