Benchmark.bm(10) do |b| 
  b.report("simple") { 50000.times { 1 + 2 } } 
  b.report("complex") { 50000.times { 1 + 2 + 3 - 2 - 4 + 5 - 3 } } 
  b.report("stupid") { 50000.times { ("1".to_i + "2".to_i).to_s.to_i } } 
end
