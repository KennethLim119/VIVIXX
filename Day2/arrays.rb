alphabet = ['a','b','c','d','e',
  'f','g','h','i','j','k','l',
  'm','n','o','p','q','r','s',
  't','u','v','w','x','y','z']

number_of_letters = alphabet.length
puts "There are #{number_of_letters} letters in the alphabet"

# last index is length -1

last_letter = alphabet[number_of_letters - 1]
puts "last letter: #{last_letter}"

first_letter = alphabet[0]
puts "First letter: #{first_letter}"
fifth_letter = alphabet[4]
puts "fifth letter: #{fifth_letter}"

twenty_sixth_index = 25



#arrays numbers
digits =Array(0..20)
puts "#{digits}"

num = digits.at(12)
puts "#{num}"
addTwo = digits [0]+digits[8]
getMin = digits.min
puts addTwo
puts getMin
puts digits
