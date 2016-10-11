Dir["*.[c|h]"].each do |path| 
    lines = IO.readlines(path) 
    
    line_number, first_year = nil, nil 
    lines.each_with_index do |line, i| 
        next unless line =~ /Copyright (\d+)/ 
        line_number, first_year = i, $1.to_i 
        break 
    end 
    
    this_year = Time.now.year 
    expected_notice = if first_year and first_year < this_year 
        "// Copyright #{first_year}-#{this_year} Andre Ben Hamou" 
    else "// Copyright #{this_year} Andre Ben Hamou" 
    end 
    
    if line_number 
        next if lines[line_number].chomp == expected_notice 
        lines[line_number] = expected_notice 
    else lines.unshift(expected_notice) 
    end 
    
    puts "Updating #{path.inspect}" 
    File.open(path, "w") { |f| f.puts lines } 
end 
