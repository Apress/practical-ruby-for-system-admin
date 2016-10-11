require "soap/rpc/driver" 

tiddles = SOAP::RPC::DRIVER.new("http://www.marthascattery.com:4761/tiddles", 
                                "http://cattery.example.com/ws") 
tiddles.add_method("spay") 
tiddles.add_method("feed", "flavour", "weight_kg") 

p tiddles.spay 
p tiddles.feed("asparagus_and_lentil", 55) 
