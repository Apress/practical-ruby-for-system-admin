class Disk 
  # previous code 
  
  def usage=(value) 
    reports.create(:mb_used => value) 
  end 
end 
