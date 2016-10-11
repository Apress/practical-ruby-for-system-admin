class Disk 
  # previous code 
  
  def usage 
    r = reports.find(:first, :order => "created_at DESC") 
    r ? report.mb_used : nil 
  end 
end 
