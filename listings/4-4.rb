def package_defaults(params) 
  {:path => "/", :receipt => true}.merge(params) 
end 

def install_package(name, params = {}) 
  params = package_defaults(params) 
  # do something with name, params[:path], and params[:receipt] 
end 
