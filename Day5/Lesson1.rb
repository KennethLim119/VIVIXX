#classes
#classes are modular:solves one particular problem, and does it well
#reusable: use functionality again and again
#data separated from logic: programmed to be general

#class ingeritance
#- rather than constructing classes from scratch, we can build upen other classes

#class: tell Ruby to define a new type of thing
#object: an individual instance of a thing, which is of a certain type:its class
#instance variable:a varialbe belonging


class Customer
  def initialize(details)
    @details = details
  end

  def print_customer_details
    puts "Customer details"
    puts "Name #{@details['name']}"
    puts "Starsign #{@details['Starsign']}"
    puts "Age: #{@details['age']}"
    puts "=" * 15
  end
end

pedro = Customer.new({"name" => "pedro", "Starsign" => "Taurus", "age" => 21})
ruegen = Customer.new({"name" => "ruegen", "Starsign" => "Aquarius", "age" => 21})

pedro.print_customer_details
ruegen.print_customer_details
