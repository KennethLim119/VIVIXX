#Joseph is in a rush to make a really important purchase.
# He has no money on him so he has gone to withdraw money
#from BPI but has found that there are serious issues with
#their systems! Can you reprogram the atm so he can buy his
# romance novel??"

@name = 'Joseph'

def greet
  system"cls"
  "foo\\ bar"
puts ' ' * 106
puts ' ' * 106
puts ' ' * 106
puts ' ' * 106
puts ' ' * 106
puts ' ' * 106
puts '=' * 106
puts '=' * 106
puts "
                         _  _  _         _
                        (_)(_)(_)       | |                                _
                         _  _  _  _____ | |  ____  ___   ____   _____    _| |_  ___
                        | || || || ___ || | / ___)/ _ \\ |    \\ | ___ |  (_   _)/ _ \\
                        | || || || ____|| |( (___| |_| || | | || ____|    | |_| |_| |
                         \\_____/ |_____) \\_)\\____)\\___/ |_|_|_||_____)     \\__)\\___/

                                             ______   ______   _
                                            (____  \\ (_____ \\ | |
                                             ____)  ) _____) )| |
                                            |  __  ( |  ____/ | |
                                            | |__)  )| |      | |
                                            |______/ |_|      |_|



"
puts '=' * 106
puts "PLEASE INSERT YOUR CARD".prepend(' ').concat(' ').center(106, '=')
puts '=' * 106
gets.chomp

end

def inpin
  system"cls"
  puts ' ' * 106
  puts ' ' * 106
  puts ' ' * 106
  puts ' ' * 106
  puts ' ' * 106
  puts ' ' * 106
  puts ' ' * 106
  puts ' ' * 106
  puts ' ' * 106
  puts ' ' * 106
  puts '=' * 106
puts "Welcome to BPI".prepend('>').concat('<').center(106, '-')
print "Please enter your pin".prepend('>').concat('<').center(106, '-')

puts '=' * 120
puts '=' * 106
@pin = gets.chomp

end

def choose
  system"cls"

  print """Hello #{@name} please choose an action:
  1) Withdraw
  2) Check balance
  3) Exit
  """
end

def pick
  puts "="
  @num = gets.chomp
  case @num
when @num = "1"
    print "how much do you want to withdraw?"
    @with = gets.chomp
    @options = true

when @num = "2"
   puts "Hello #{@name}, you still have an amount of 5000 pesos"
   @options = true

when @num = "3"
  puts "Thank you #{@name}, Have a nice day!"

else
  puts "please choose a number from 1 to 3 only"

end
end

def finish
  puts "Thank you for choosing BPI"
  puts "have a nice day!"
end

greet
inpin
choose
pick
finish
