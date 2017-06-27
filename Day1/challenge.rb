puts "please enter your name :)"
name = gets.chomp
puts "Good Day, #{name} Please input your order"
order = gets.chomp
puts "How many #{order} will you be having? "
amount = gets.chomp

puts "is there any additional orders?"

n="y"
while n=="y" do
  puts "order more? y/n"
  n=gets.chomp
end
