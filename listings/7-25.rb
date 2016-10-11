require 'soap/wsdlDriver' 

wsdl_url = "http://www.marthascattery.com/tiddles.wsdl" 
driver_factory = SOAP::WSDLDriverFactory.new(wsdl_url) 
tiddles = driver_factory.create_rpc_driver 

p tiddles.stroke 
