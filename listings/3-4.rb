require "profile"
 
def factorial(n) 
  n > 1 ? n * factorial(n - 1) : 1 
end 
factorial(627) 
