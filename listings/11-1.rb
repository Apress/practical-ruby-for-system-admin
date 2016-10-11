task :default => :test 

task :test do 
  ruby "tests/test1.rb" 
  ruby "tests/test2.rb" 
end 
