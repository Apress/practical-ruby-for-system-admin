require "builder" 

builder = Builder::XmlMarkup.new 
page = builder.html do |html| 
  html.head { |head| head.title("Users") } 
  html.body { |body| body.a("bob", "href" => "b1") } 
end 
