require "profiler"

# we'll assume this definition is expensive and might skew the results 
def factorial(n) 
  (2..n).to_a.inject(1) { |product, i| product * i } 
end

# hence we only want to profile this exact bit of code 
Profiler__.start_profile 
factorial(627) 
Profiler__.stop_profile 
Profiler__.print_profile($stdout) 
