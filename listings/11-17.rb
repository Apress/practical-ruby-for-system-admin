Rake::RDocTask.new do |t| 
  t.main = "README" 
  t.rdoc_files.include("README.rdoc", "lib/**/*.rb") 
  t.options << "--diagram" 
end 
