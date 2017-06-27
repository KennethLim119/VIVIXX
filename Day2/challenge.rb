#Global Variables
@price
@total = 0
@x = 1
@choice
@amount
@menu = [
  {Steak: "ribeye", price: 180},
  {Steak: "porterhouse", price: 200},
  {Steak: "salmon", price: 230},
  {Steak: "chicken", price: 160},
]

puts "Welcome to My Steak House!
Here we have "
def pick

@menu.each do |info|

  puts "#{@x}. #{info[:Steak]} = #{info[:price]}"
  @x += 1
end
end

def questions
  pick
puts "what do you want to eat?"
choice = gets.chomp.to_i
puts "how many #{@menu[choice-1][:Steak]} will you be having?"
amount = gets.chomp
puts "you have ordered #{amount.to_i} #{@menu[choice-1][:Steak]}"

@total = @total + amount.to_i * @menu[choice-1][:price]
puts "your total bill is #{@total}"
puts "anymore orders?"
end

n="y"
while n=="y" do
  questions
  puts "order more? y/n"
  n=gets.chomp
  if n == "y"
@x = 1
  end
end

puts "your total bill is #{@total}
how much will you be paying?"
@payment=gets.chomp.to_i
def payments
if @payment>=@total
  puts "your change is #{@payment - @total}"
end
if @payment<@total
  puts "you dont have enough cash"
end
end
payments
