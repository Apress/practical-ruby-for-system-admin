class File 
  def File.open_locked(*args) 
    File.open(args) do |f| 
      begin 
        f.flock(File::LOCK_EX) 
        result = yield f 
      ensure 
        f.flock(File::LOCK_UN) 
        return result 
      end 
    end 
  end 
end 
