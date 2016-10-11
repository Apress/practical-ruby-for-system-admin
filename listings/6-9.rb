Host.find(:all).each do |host| 
  puts "***#{host.name}***" 
  puts host.disks.map do |disk| 
    [disk.mnt_point, disk.dev_name, disk.mb_available].join("\t") 
  end.join("\n") 
end 
