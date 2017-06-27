

  #Challenge Two
  #Create a Car app which has a car and a driver
  #The Car should have a make, age, top_speed, and gas_tank_size
  #A Driver should have a name, a car, age and a contact
  #Use attr_accessor to set up getter and setters
  #Create the appe so that we can have the car's make and age output to the terminal


  class CarMatch
    attr_accessor :make, :age, :top_speed, :gas_tank_size

   def initialize (make, age, top_speed, gas_tank_size)
      @make = make.to_s
      @age = age
      @top_speed = top_speed.to_i
      @gas_tank_size = gas_tank_size.to_i
    end
  end

  @ford = CarMatch.new("Ford", 2014, 300, 100)
  @audi = CarMatch.new("Audi", 2015, 200, 95)
  @ferrari = CarMatch.new("Ferrari", 2016, 100, 80)



  class DriverList
    attr_accessor :name, :car, :age, :contact

   def initialize (name, car, age, contact)
      @name = name
      @car = car
      @age = age.to_i
      @contact = contact.to_i
    end
  end

  @driver1 = DriverList.new("Andrew", "Ford", 23, 9023495)
  @driver2 = DriverList.new("Hepburn", "Audi", 33, 94321234)
  @driver3 = DriverList.new("Harry", "Ferrari", 19, 9231001)


  def intro
    puts "LIST OF DRIVERS"
    puts "1.#{@driver1.name}"
    puts "2.#{@driver2.name}"
    puts "3.#{@driver3.name}"
    puts " "
    puts "Please Driver's Name:"
    $dname =gets.chomp.to_s
    if $dname.upcase == "ANDREW"
     disp1
   elsif $dname.upcase == "HEPBURN"
     disp2
   elsif $dnmae.upcase ==  "HARRY"
     disp3
   else
     puts "Invalid Choice!"
   end
  end

  def disp1
      if $dname = @driver1.name
      puts "Driver's Name:  #{@driver1.name}"
      puts "Age: #{@driver1.age}"
      puts "Contact No.: #{@driver1.contact}"
      puts "Assigned Car: #{@ford.make}, Year #{@ford.age}, Top Speed: #{@ford.top_speed}mph, with a Gas Tank of: #{@ford.gas_tank_size}L"
      end
  end

  def disp2
      if $dname = @driver2.name
      puts "Driver's Name:  #{@driver2.name}"
      puts "Age: #{@driver2.age}"
      puts "Contact No.: #{@driver2.contact}"
      puts "Assigned Car: #{@audi.make}, Year #{@audi.age}, Top Speed: #{@audi.top_speed}mph, with a Gas Tank of: #{@audi.gas_tank_size}L"
      end
  end

  def disp3
      if $dname = @driver3.name
      puts "Driver's Name:  #{@driver3.name}"
      puts "Age: #{@driver3.age}"
      puts "Contact No.: #{@driver3.contact}"
      puts "Assigned Car: #{@ferrari.make}, Year #{@ferrari.age}, Top Speed: #{@ferrari.top_speed}mph, with a Gas Tank of: #{@ferrari.gas_tank_size}L"
      end
  end
intro
