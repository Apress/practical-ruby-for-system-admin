desc "Commit the current working copy if all tests pass" 
task :commit => :test do 
  sh "svn", "commit" 
end 
