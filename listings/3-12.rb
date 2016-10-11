def embezzle(amount) 
  (@embezzled ||= []) << amount 
  (@embezzled_total ||= 0) += amount 
end 

def embezzled_total 
  (@embezzled_total || 0) 
end 
