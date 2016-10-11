class Disk 
  # previous code 
  
  def usage=(value) 
    Disk.transaction(self) do 
      reports.create(:mb_used => value) 
      self.update_attribute(:usage, value) 
    end 
  end 
end 