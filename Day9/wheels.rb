def choose
puts "pick the wheels you want"
puts "Chrome Wheels,50000"
puts "Aluminum Wheels,30000"
puts "Mag Wheels,20000"
puts "Allow Wheels,10000"
pick = gets.chomp

when
  pick == 1
  puts "Chrome wheels costs 50,000"
  puts "are you sure you want chrome wheels?"

when
  pick == 2
  puts "Aluminum Wheels costs 30,000"
  puts "Are you sure you want Aluminum Wheels?"

when
  pick == 3
  puts "Mag Wheels costs 20,000"
  puts "Are you sure you want Mag wheels?"

when
  pick == 4
  puts "Allow wheels costs 10,000"
  puts "are you sure you want Allow wheels?"

end
