@names = 'Mika = 0, Reggie = 1, Trevor = 3, Celle = 4'.split('/n')
@move = false
@done = false
@count = 0
@vote =""
@complete = false

def greetings
puts "╔══════════════════════╗".prepend(' ').concat(' ').center(100, '=')
puts "║ Every vote COUNTS!!! ║".prepend(' ').concat(' ').center(100, '=')
puts "╚══════════════════════╝".prepend(' ').concat(' ').center(100, '=')

puts "Good day voters, here in VIVIXX Academy we are having an election and".prepend(' ').concat(' ').center(100, ' ')
puts "I am sorry to inform you that Kenneth will be replaced by Sir Jeff".prepend(' ').concat(' ').center(100, ' ')

puts "Please type your name"
voter = gets.chomp

puts "hello #{voter} please vote for the candidate who you know can manage VIVIXX Academy"
end

def question
puts "The candidates are: #{@names}"
puts "Please pick the number assigned to the candidates"
@choice = gets.chomp

when "0"
puts "you have voted for Mika"


when "1"
  puts "you have voted for Reggie"


else
  puts "please pick their numbers ONLY"
  question
end

n="no"
while n=="no" do
question
  puts "Are you sure about your vote? (yes or no)"
  n=gets.chomp
  if n == "no"
@x = 1
  end
end
