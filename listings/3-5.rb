require "profile"
 
def factorial(n) 
  (2..n).to_a.inject(1) { |product, i| product * i } 
end 
factorial(627)
