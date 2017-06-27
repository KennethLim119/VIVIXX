def bar

puts "please choose the bar of your cart"
puts "high drag,25000"
puts "low drag,20000"
puts "zero drag ,15000"
puts "Tracket,10000"
puts "choose the number of your choice"
end

loop do
  bar
  pick = gets.chomp.to_i

case pick

when 1
  puts "High Drag costs 25,000"
  puts "are you sure you want a High Drag?"

when 2
  puts "Hybrid/DePedal costs 15,000"
  puts "Are you sure you want a Low Drag?"

when 3
  puts "Zero Drag costs 15000"
  puts "Are you sure you want a Zero Drag?"

when 4
  puts "Tracket costs 10,000"
  puts "are you sure you want a Tracket?"

else
  puts "choose only in the selection"

end
end
