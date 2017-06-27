#getter and setters
#getter = read, setter = write

class Rectangle
  def initialize(name, age)
@name = name
@age = age
end

#add on age getter method

end
John = Person.new("John", 42)
age = #get John's age
puts "John's age is #{age}"


#getter
#1. using your text editor creating ruby file and define a person class object.
#2. inside define instance variables @name @age
#3. define a getter method to fetch the age.
#4.create an instance og the object and save it to a variable outside your class
#5. call the getter method and store the results in another variable
#6. print the variable holding the name.

#when you define a getter you can control what instance varibale is accessed.

#setters

class Rectangle

def initialize(length, breadth)
  @length = length
  @breadth = breadth
end

#getters
def length
  @length
end
def breadth
  @breadth
end

#setters
def length=(length)
  @length = length
end

def breadth=(breadth)
  @breadth=breadth
end
end

#create instance
rect = Rectangle.new(10,20)
rect.length = 30 # calls: def length=(length)
rect.breadth = 15 #calls: def breadth=(breadth)
x = rect.length #calls: def length
y = rect.breadth #calls: def breadth

puts x
puts y
#output
