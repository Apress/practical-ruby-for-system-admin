require "xmlrpc/server" 
server = XMLRPC::Server.new 
server.add_handler("math.Multiply") { |a, b| a * b } 
server.serve 
