class Book < ActiveResource::Base 
  self.site =  "http://www.example.com" 
end 

new_book = Book.new(:name => "See Tops Ruin").save 

other_book = Book.find(15) 
other_book.name.reverse! 
other_book.save! 
other_book.destroy 
