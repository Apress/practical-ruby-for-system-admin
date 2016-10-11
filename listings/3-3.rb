Benchmark.bmbm(10) do |b| 
  b.report("readlines") do 
    IO.readlines("testfile").find { |line| line =~ /radish/ } 
  end 
  b.report("each") do 
    found_line = nil 
    File.open("testfile").each do |line| 
      if line =~ /radish/ 
        found_line = line 
        break 
      end 
    end 
  end 
end 
