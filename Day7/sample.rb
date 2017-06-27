class Car
  attr_accessor :car
   def initialize
     @car=[]
   end
   def save(car_info)
     @car.push(car_info)
   end
   def view
     if @car.length !=0
       for x in 0..@car.length-1
         puts tab("#{x+1}. #{@car[x]["make"].upcase} | #{@car[x]["top_speed"]} | #{@car[x]["gas_tank_size"]}")
       end
     else
       puts toCenter("No registered cars!")
     end
   end
end
class Driver
  attr_accessor :drivers, :driver_cars
  def initialize
    @drivers=[]
    @driver_cars=[]
  end
  def save(car_info)
    @drivers.push(driver_info)
  end
  def view
    if @drivers.length !=0
      for x in 0..@drivers.length-1
        puts tab("#{x+1}. #{@drivers[x]["uname"]} | #{@drivers[x]["name"]} | #{@drivers[x]["age"]} | #{@drivers[x]["contact"]}")
      end
    else
      puts toCenter("No registered drivers!")
    end
  end
end
def blankSpace
  return "\n"
end
def line
  return "_"*79
end
def toCenter(str)
  return str.center(79," ")
end
def tab(str)
  return str.prepend(' '*27)
end
def line_animator(x)
  arr = x.split("")
  arr.each do |z|
    print z
    sleep(0.5/50.0)
  end
end
def text_animator(x)
  arr = x.split("")
  arr.each do |z|
    print z
    sleep(1.0/24.0)
  end
end
def start_screen
  system "cls"
  puts blankSpace,blankSpace
  line_animator(line)
  puts blankSpace
  text_animator(toCenter("CARS"))
  puts blankSpace
  line_animator(line)
  puts blankSpace, blankSpace
  text_animator(toCenter("[1. Register] [2. Login]"))
  puts blankSpace, line, blankSpace
end
def reg_driver
  existing=false
  system "cls"
  puts blankSpace, blankSpace, line,blankSpace
  puts toCenter("REGISTRATION")
  puts blankSpace, line, blankSpace
  print "Enter your username? ".prepend(' '*15)
  uname=gets.chomp
  for x in 0..@driver.drivers.length-1
    if @driver.drivers[x]["uname"]==uname.upcase
      existing=true
      break
    end
  end
  if existing==false
    print "What is your name? ".prepend(' '*15)
    name=gets.chomp
  print "How old are you? ".prepend(' '*15)
  age=gets.chomp
  print "What is your contact number? ".prepend(' '*15)
  contact=gets.chomp
  @driver.drivers.push({"uname"=>uname.upcase, "name"=>name.upcase, "age"=>age, "contact"=>contact})
  system "cls"
  puts blankSpace, blankSpace, line,blankSpace, blankSpace
  puts toCenter("Account saved.")
  puts blankSpace, blankSpace, line,blankSpace, blankSpace
  gets.chomp
else
  system "cls"
  puts blankSpace, blankSpace, line,blankSpace, blankSpace
  puts toCenter("You already have an account.")
  puts blankSpace, blankSpace, line,blankSpace, blankSpace
  gets.chomp
end
end
def invalid
  system "cls"
  puts blankSpace, blankSpace, line,blankSpace, blankSpace
  puts toCenter("Invalid choice!")
  puts blankSpace, blankSpace, line,blankSpace, blankSpace
  gets.chomp
end
def admin
  n=true
  while n==true do
  system "cls"
  puts blankSpace,blankSpace, line, blankSpace
  puts toCenter("CARS")
  puts blankSpace, line, blankSpace
  puts toCenter("[1. Register Car] [2. View Cars] [3. View Drivers] [4. Logout]")
  puts blankSpace, line, blankSpace
  puts tab("Enter the number of your choice.")
  print tab(">>> ")
  choice = gets.chomp
    if choice=="1"
      system "cls"
      puts blankSpace, blankSpace, line,blankSpace
      puts toCenter("NEW CAR")
      puts blankSpace, line, blankSpace
      print "Car maker: ".prepend(' '*15)
      make=gets.chomp
      print "Age: ".prepend(' '*15)
      age=gets.chomp
      print "Top speed: ".prepend(' '*15)
      top_speed=gets.chomp
      print "Gas Tank Size: ".prepend(' '*15)
      gas_tank=gets.chomp
      @car.save({"make"=>make, "age"=>age, "top_speed"=>top_speed, "gas_tank_size"=>gas_tank})
      system "cls"
        puts blankSpace, blankSpace, line,blankSpace, blankSpace
      puts toCenter("New car saved!")
        puts blankSpace, blankSpace, line,blankSpace, blankSpace
      gets.chomp
    elsif choice=="2"
      system "cls"
      puts blankSpace, blankSpace, line,blankSpace
      puts toCenter("CAR LIST")
      puts blankSpace, line, blankSpace
      @car.view
      gets.chomp
    elsif choice=="3"
      system "cls"
      puts blankSpace, blankSpace, line,blankSpace
      puts toCenter("DRIVER LIST")
      puts blankSpace, line, blankSpace
      @driver.view
      gets.chomp
    elsif choice=="4"
        n=false
      else
        invalid
    end
  end
end
@uname=""
def driver_login
  existing=false
  system "cls"
  puts blankSpace, blankSpace, line,blankSpace
  puts toCenter("LOGIN DRIVER")
  puts blankSpace, line, blankSpace
  print tab("Enter you username? ")
  uname=gets.chomp
  @uname=uname
  for x in 0..@driver.drivers.length-1
    if @driver.drivers[x]["uname"]==uname.upcase
      existing=true
      break
    end
  end
  if existing==true
    n=true
    while n==true do
  system "cls"
  puts blankSpace,blankSpace, line, blankSpace
  puts toCenter("CARS")
  puts line
  puts "[DRIVER] #{@uname.upcase}"
  puts blankSpace
  puts toCenter("[1. Buy] [2. View] [3. Logout]")
  puts blankSpace, line, blankSpace
  puts tab("Enter the number of your choice.")
  print tab(">>> ")
  choice = gets.chomp
  if choice=="1"
    if @car.car.length==0
      system "cls"
      puts blankSpace, blankSpace, line,blankSpace
      puts toCenter("BUY CAR")
      puts blankSpace, line,blankSpace
    puts toCenter("No registered cars!")
    gets.chomp
    else
      system "cls"
      puts blankSpace, blankSpace, line,blankSpace
      puts toCenter("BUY CAR")
      puts blankSpace, line,blankSpace
      @car.view
      puts blankSpace
      puts tab("Enter the number of your chosen car.")
      print tab(">>> ")
      car=gets.chomp
      if car.to_i>=1 and car.to_i<=@car.car.length
      @driver.driver_cars.push({"uname"=>@uname, "car"=>car.to_i-1})
      system "cls"
      puts blankSpace, blankSpace, line,blankSpace, blankSpace
      puts toCenter("New car added.")
      puts blankSpace, blankSpace, line,blankSpace, blankSpace
      gets.chomp
    else
      invalid
    end
    end
  elsif choice=="2"
    system "cls"
    puts blankSpace, blankSpace, line,blankSpace
    puts toCenter("CAR LIST")
    puts line
    puts "[DRIVER] #{@uname.upcase}"
    puts blankSpace
    no_car=true
    for x in 0..@driver.driver_cars.length-1
        if @uname.upcase==@driver.driver_cars[x]["uname"].upcase
          # i=@driver.driver_cars[x]["car"].to_i
          # puts tab("#{x+1}. #{@car.car[i]["make"]} | #{@car.car[i]["top_speed"]} | #{@car.car[i]["gas_tank_size"]}")
          no_car=false
          break
        else
          no_car=true
        end
    end
    if no_car==true
      puts toCenter("No cars.")
    else
      for x in 0..@driver.driver_cars.length-1
          if @uname.upcase==@driver.driver_cars[x]["uname"].upcase
            i=@driver.driver_cars[x]["car"].to_i
            puts tab("#{@car.car[i]["make"].upcase} | #{@car.car[i]["top_speed"]} | #{@car.car[i]["gas_tank_size"]}")
          end
        end
    end
    gets.chomp
  elsif choice=="3"
    n=false
  else
    invalid
  end
end
else
  system "cls"
  puts blankSpace, blankSpace, line,blankSpace, blankSpace
  puts toCenter("You dont have an account. Register first.")
  puts blankSpace, blankSpace, line,blankSpace, blankSpace
  gets.chomp
end
end
@driver=Driver.new
#@driver.save({"uname"=>"JOHN"})
@car=Car.new
n=true
while n==true do
start_screen
puts tab('Enter the number of your choice.')
print tab('>>> ')
@driver_choice=gets.chomp
if @driver_choice=="1"
  reg_driver
elsif @driver_choice=="2"
driver_login
elsif @driver_choice.upcase=="ADMIN"
admin
elsif @driver_choice.upcase=="EXIT"
exit
else
  invalid
end
end
#
# @car=Car.new
# @driver=Driver.new
#
# @driver.view
#
# @car.view
# @car.save({"make"=>"Toyota", "age"=>2, "top_speed"=>"1 km/s", "gas_tank_size"=>"15 Galoons"})
# sleep(1/2)
# @car.view
