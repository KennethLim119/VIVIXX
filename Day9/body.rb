def body
  puts "please choose the body of your cart"
  puts"Sports Cart,250000"
puts"Hybrid/DePedal,150000"
puts"Convertible,100000"
puts"Luxury Cart,50000"
puts"Wagon, 30000"
puts "choose the number of your choice"
end

loop do
  body
  pick = gets.chomp.to_i

case pick

when 1
  puts "Sports Cart costs 250,000"
  puts "are you sure you want a Sports Cart?"

when 2
  puts "Hybrid/DePedal costs 150,000"
  puts "Are you sure you want a Hybrid/DePedal?"

when 3
  puts "Convertible costs 100,000"
  puts "Are you sure you want a Convertible?"

when 4
  puts "Luxury cart costs 50,000"
  puts "are you sure you want a Luxury cart?"

when 5
  puts "Wagon cart costs 30,000"
  puts "Are you sure you want a Wagon cart?"

else
  puts "choose only in the selection"

end
end

def finish
  you
