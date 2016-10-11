words = [] 
paragraph.each do |word| 
  words << word unless words.include?(word) 
end 

# versus... 
words = {} 
paragraph.each do |word| 
  words[word] = nil 
end 
words = words.keys 
