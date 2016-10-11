require "benchmark" 

words = IO.readlines("/usr/share/dict/words") 

Benchmark.bmbm(15) do |b| 
  b.report("include") do 
    words.each { |w| next if w.include?("abe") } 
  end 
  b.report("regexp") do 
    words.each { |w| next if w =~ /abe/ } 
  end 
end 
