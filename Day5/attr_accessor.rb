class Rectangle
  attr_accessor :length, :breadth

  def initialize(length, breadth)
    @length =length
    @breadth = breadth
end
end

#create a rectangle object
rect = Rectangle.new(20,10)

#set the length and breadth
rect.length = 300
rect.breadth = 20

#retrieve the length and breadth
length = rect.length
breadth = rect.breadth

puts length
puts breadth
