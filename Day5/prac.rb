class Car
  attr_accessor :car_details
   def initialize
     @car_details=[]
   end
end

class Driver
  attr_accessor :driver_details

  def initialize
    @driver_details=[]
  end

end

cars=Car.new
cars.car_details.push({"code"=>0, "make"=>"Toyota", "age"=>2, "top_speed"=>"1km/s","gas_tank_size"=>"12 Gallons"})
cars.car_details.push({"code"=>1, "make"=>"Honda", "age"=>2, "top_speed"=>"2km/s","gas_tank_size"=>"13 Gallons"})
cars.car_details.push({"code"=>2, "make"=>"MB", "age"=>2, "top_speed"=>"3km/s","gas_tank_size"=>"15 Gallons"})
cars.car_details.push({"code"=>3, "make"=>"Lamborghini", "age"=>2, "top_speed"=>"0.1km/s","gas_tank_size"=>"15 Gallons"})
drivers=Driver.new





system "cls"
# for x in 0..cars.car_details.length-1
#   puts "#{cars.car_details[x]["code"]} #{cars.car_details[x]["make"]} #{cars.car_details[x]["age"]} #{cars.car_details[x]["top_speed"]} #{cars.car_details[x]["gas_tank_size"]}".prepend(' '*27)
# end
# gets.chomp
ex=true
while ex==true do
print "What is your name? "
name=gets.chomp
if drivers.driver_details.length == 0
print "How old are you? "
age = gets.chomp
print "What is your contact number? "
contact=gets.chomp
puts " "
puts "Choose your car"
for x in 0..cars.car_details.length-1
  puts "#{cars.car_details[x]["code"]} #{cars.car_details[x]["make"]} #{cars.car_details[x]["age"]} #{cars.car_details[x]["top_speed"]} #{cars.car_details[x]["gas_tank_size"]}".prepend(' '*27)
end
print ">>> "
car=gets.chomp

drivers.driver_details.push({"name"=>name, "car"=>car, "age"=>age, "contact"=>contact})

for y in 0..drivers.driver_details.length-1
  puts "Name: #{drivers.driver_details[y]["name"]}"
  puts "Your car is:"
 puts " #{cars.car_details[drivers.driver_details[y]["car"].to_i]["make"]} #{cars.car_details[drivers.driver_details[y]["car"].to_i]["age"]} #{cars.car_details[drivers.driver_details[y]["car"].to_i]["top_speed"]} #{cars.car_details[drivers.driver_details[y]["car"].to_i]["gas_tank_size"]}"
end

else
  driver_car=false
  for z in 0..drivers.driver_details.length-1

    if name.strip.upcase==drivers.driver_details[z]["name"].upcase
      driver_car=true
      break
    end
  end
  if driver_car==false

      print "How old are you? "
      age = gets.chomp
      print "What is your contact number? "
      contact=gets.chomp
      puts " "
      puts "Choose your car"
      for x in 0..cars.car_details.length-1
        puts "#{cars.car_details[x]["code"]} #{cars.car_details[x]["make"]} #{cars.car_details[x]["age"]} #{cars.car_details[x]["top_speed"]} #{cars.car_details[x]["gas_tank_size"]}".prepend(' '*27)
      end
      print ">>> "
      car=gets.chomp

      drivers.driver_details.push({"name"=>name, "car"=>car, "age"=>age, "contact"=>contact})

      for y in 0..drivers.driver_details.length-1
        if name==drivers.driver_details[y]["name"]
        puts "Name: #{drivers.driver_details[y]["name"]}"
        puts "Your car is:"
       puts " #{cars.car_details[drivers.driver_details[y]["car"].to_i]["make"]} #{cars.car_details[drivers.driver_details[y]["car"].to_i]["age"]} #{cars.car_details[drivers.driver_details[y]["car"].to_i]["top_speed"]} #{cars.car_details[drivers.driver_details[y]["car"].to_i]["gas_tank_size"]}"
       break
     end
      end
else
  puts "You already have a car."
  for y in 0..drivers.driver_details.length-1
      if name==drivers.driver_details[y]["name"]
    puts "Name: #{drivers.driver_details[y]["name"]}"
    puts "Your car is:"
   puts " #{cars.car_details[drivers.driver_details[y]["car"].to_i]["make"]} #{cars.car_details[drivers.driver_details[y]["car"].to_i]["age"]} #{cars.car_details[drivers.driver_details[y]["car"].to_i]["top_speed"]} #{cars.car_details[drivers.driver_details[y]["car"].to_i]["gas_tank_size"]}"
      break
    end

  end
end
end
end
