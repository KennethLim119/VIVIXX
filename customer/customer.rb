#customer_test.rb
class Customer
  def initialize (first_name, last_name, age)

    @first_name = first_name
    @last_name = last_name
    @full_name =  "#{@first_name} #{@last_name}"
    @age = age

  end

  def first_name
    puts "what is your first name?"
    @first_name = gets.chomp
  end

  def full_name
    @full_name
end

  def last_name
    @last_name
  end

  def age
    @age
end
end
