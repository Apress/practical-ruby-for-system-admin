module AdminFunctions 
  def wipe_disk(mount_path) 
    # wipe the specified disk 
  end 
end 

class User 
  def admin? 
    # determine whether the user is an admin or not 
  end
 
  def logon(name, password) 
    # authenticate the user 
    extend(AdminFunctions) if admin? 
  end 
end 
