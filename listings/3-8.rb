require "benchmark" 

NUM_TRIALS = 10 ** 7 
Benchmark.bmbm do |b| 
  b.report("symbol") do 
    NUM_TRIALS.times { me = :andre } 
  end 
  b.report("string") do 
    NUM_TRIALS.times { me = "andre" } 
  end 
end 
