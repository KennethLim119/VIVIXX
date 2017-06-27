puts "RECAP\n\n"

#variables are like cups
#you can put anything inside the cup
cup = 'water'
#let us look at the cup to see what is inside
puts cup
#let us change whatever is inside the cup
cup = 'coffee'
#then look
puts "The cup has #{cup} in it"
#now lets ask for what we want to put inside the cup
puts "What will we put inside the cup"
cup = gets.chomp
#then see if it went in
puts "The cup has #{cup} in it"

gets
puts "ARRAY is like a bigger cup"
#we can put many things in it at once
bigCup = ['water','coffee','sugar','creamer']
puts bigCup
gets
#it is all messed up
puts bigCup.sort
puts "Now that's alphabetical "

gets

puts "Hashes is a container that holds information about the same thing"
profile = {
  name: 'jay',
  lastname: 'smith'
}
gets
puts profile
gets
puts "Now lets combine arrays and hashes"
menu = [
  {item: "Main Dish", price: 100},
  {item: "Side Dish", price: 50},
  {item: "Dessert", price: 10}
]
puts menu
gets
puts "What do you want?"
chosen = gets.chomp
menu.each do |food|
if chosen==food[:item]
  puts food[:price]
end
end
