class Rectangle
  attr_reader :length, :breadth

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end
end

rect = Rectangle.new(10, 20)
x = rect.length
y = rect.breadth

#output
puts "length of the rectanble is #{"x"}"
puts "breadth of the rectanble is #{"y"}"
