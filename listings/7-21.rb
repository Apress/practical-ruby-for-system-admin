require "xmlrpc/client" 
server = XMLRPC::Client.new("www.cookcomputing.com", "/xmlrpcsamples/math.rem") 
p server.call("math.Multiply", 23, 14) 
