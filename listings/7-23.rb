class MathHandler 
  def multiply(a, b) 
    a * b 
  end 
end 

require "xmlrpc/server" 
server = XMLRPC::Server.new 
server.add_handler("math", MathHandler.new) 
server.serve 
