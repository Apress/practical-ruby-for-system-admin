require "benchmark" 
require "inline" 

class Integer 
  def count_set_bits(use_c = false) 
    return csb(self) if use_c 
    return 0 if self.zero? 
    bits, x = 1, self 
    bits += 1 while (x = x & (x - 1)).nonzero? 
    bits 
  end 

  inline do |builder| 
    builder.c "int csb(long x) { 
      if (x == 0) return (x); 
      int bits = 1; 
      while ((x = x & (x - 1))) bits++; 
      return (bits); 
    }" 
  end 
end 

Benchmark.bmbm do |b| 
  b.report("ruby") { 100_000.times { 152363.count_set_bits } } 
  b.report("c") { 100_000.times { 152363.count_set_bits(true) } } 
end 
