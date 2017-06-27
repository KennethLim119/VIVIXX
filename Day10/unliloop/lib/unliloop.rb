@name = ''
def greetings
  system 'cls'
  puts "Hello classmate, kindly type your name"
  @name = gets.chomp

system 'cls'
  puts "Hello #{@name}, i've created an unliloop."
  puts "The only way you can stop the loop is when you say the magic word."
  puts "The word PLEASE is the word to stop the loop :) "
end

def again
  puts "enter yes or no"
end
def unli

    loop do

    start = gets.chomp

  case start
  when "yes"
      puts "Do you want to continue the loop?"


  when "no"
        puts "you can't escape this loop!"
        puts "Please read what i've wrote"

  when "please"
      puts "Ok, I'll end the loop. "
      puts "keep on using the magic word :)"
      puts "Good bye #{@name}"
      break

  else
      puts "Choose if it's yes or no only!"
end
end
end
greetings
again
unli
