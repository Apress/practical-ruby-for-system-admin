host = Host.create(:name => "slarti") 
disk = host.disks.create(:dev_name     => "/dev/disk1s1", 
                         :mnt_point    => "/", 
                         :mb_available => 80 * 1024) 
disk.reports.create(:mb_used => 20 * 1024) 
disk.reports.create(:mb_used => 25 * 1024) 
