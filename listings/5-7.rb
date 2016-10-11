require "GD" 

image = GD::Image.new(100, 100)      # create an empty canvas, 100 pixels square 
red = image.colorAllocate(255, 0, 0) # define the color red as RGB(255, 0, 0) 
image.rectangle(25, 25, 75, 75, red) # draw a red square in a particular place 
image.gif STDOUT                     # dump the GIF of this drawing to standard out 
