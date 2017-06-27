
puts "╔══════════════════════╗".prepend(' ').concat(' ').center(100, '=')
puts "║ Every vote COUNTS!!! ║".prepend(' ').concat(' ').center(100, '=')
puts "╚══════════════════════╝".prepend(' ').concat(' ').center(100, '=')

puts "Good day voters, here in VIVIXX Academy we are having an election and".prepend(' ').concat(' ').center(100, ' ')
puts "I am sorry to inform you that Kenneth will be replaced by Sir Jeff".prepend(' ').concat(' ').center(100, ' ')

puts "Please type your name"
voter = gets.chomp

puts "hello #{voter} please vote for the candidate who you know can manage VIVIXX Academy"

name = [{Candidate: "Mika", votes: 0},
  {Candidate: "Reggie", votes: 0},
  {Candidate: "Trevor", votes: 0},
  {Candidate: "Celle", votes: 0},
]


def questions
puts "The candidates are: #{@name} please pick the number of the person you want"
choice = gets.chomp.to_i
puts "You have voted for #{@name[choice][:Candidate]}"

end

n="no"
while n=="no" do
  questions
puts "Are you sure about your vote? (yes or no)"
  n=gets.chomp
  if n == "no"
@x = 1
  end
end


#Global
@x = 1
@total = 0
