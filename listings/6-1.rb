require "benchmark" 
require "yaml" 

data = {} 
IO.readlines("/usr/share/dict/words")[0..25000].each do |line| 
  line.chomp! 
  data[line] = line.size 
end 

Benchmark.bmbm do |b| 
  serialised_data = nil 
  b.report("rb_write") { serialised_data = data.inspect } 
  b.report("rb_read") { eval(serialised_data) } 

  b.report("ms_write") { serialised_data = Marshal.dump(data) } 
  b.report("ms_read") { Marshal.load(serialised_data) } 

  b.report("ym_write") { serialised_data = YAML.dump(data) } 
  b.report("ym_read") { YAML.load(serialised_data) } 
end 
