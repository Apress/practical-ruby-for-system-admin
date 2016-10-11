hostname = `/bin/hostname` 
host = Host.find_or_create_by_name(hostname) 

`/bin/df Ðlm`.each do |line| 
  next unless line =~ /^(\/dev\/\S+)\s(.*?)$/ 

  dev_name = $1 
  total, used, available, capacity, mnt_point = $2.split(" ") 
  
  disk = host.disks.find_or_create_by_dev_name_and_mnt_point(dev_name, mnt_point) 
  t = total.to_i 
  disk.update_attribute(:mb_available, t) unless disk.mb_available == t 
  
  disk.usage = used.to_i 
end
# the previous line is erroneously quoted as 'each'
# in the first release of the book 
