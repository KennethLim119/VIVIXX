puts "create a file: "
file = gets.chomp

system 'cls'

opened_file = File.open(file)

opened_file = File.open(file, 'a+')


puts "tell me, what do you desire? "
desire = gets.chomp

opened_file.write(desire)
opened_file.write("\n")

opened_file.rewind
system 'cls'
puts 'these are what you desire'
puts "(*^ω^)/	" *5

print opened_file.read

opened_file.close

puts 'press enter to exit'
gets.chomp
system 'cls'
