def menu
  puts "\n=== Menu options ==="
  puts "1. exit program"
  puts "2. Print japanese haiku\n"
end

loop do
  menu
  command = gets.chomp

  #if/else statement

  if command == "1"
    puts "\n Good bye"
    break

  elsif command == "2"

  puts "-" * 15
  puts 'Furu ike ya'
  puts "kawazu tobikomu"
  puts "mizu no oto\n"

else
  puts "wrong command!!"
end

end
