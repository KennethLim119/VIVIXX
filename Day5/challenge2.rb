class Vroom
  attr_accessor :name, :age, :top_speed, :gas_tank, :size

def initialize (name, year, top_speed, gas_tank_size)
  @name = name.to_s
  @year = year
  @top_speed = top_speed
  @gas_tank = gas_tank

end
end

@apple = Vroom.new("Audi TT", 2016, 220, 2)
@banana = Vroom.new("Chevrolet", 2014, 380, 1.8)
@carrot = Vroom.new("volks", 2015, 250, 1.5)

class Bang
  attr_accessor :name, :age, :car, :contact

def initialize (name, age, car, contact)
  @name = name
  @age = age
  @car = car
  @contact = contact
end
end

@banga = Bang.new("Ketchup", 50, "Audi TT", 123456)
@bange = Bang.new("Toyomansi", 48, "Chevrolet", 987654)
@bangi = Bang.new("Patis", 65, "volks", 741852)

def greet
puts  "hello! please type a name"
owner
end

def owner
  puts "*" *20
  @name = gets.chomp
case @name
when @name == "abc"
  info

end
end
