def embezzle(amount) 
  (@embezzled ||= []) << amount 
end 

def embezzled_total 
  (@embezzled || []).inject(0) { |sum, amount| sum + amount } 
end 
