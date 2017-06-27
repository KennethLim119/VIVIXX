names = 'hannah, grace, joan'.split(', ')
puts "#{names}"

names[1]=names[1].capitalize
puts "#{names}"

names[0]=names[0].upcase
puts "#{names}"

puts names.join(" ")
#gets.strip = trim the end
#gets.chomp = space at the end

fruits = 'orange, apple, cherry'.split(", ")
fruits[2]=fruits[2].capitalize
fruits[1]=fruits[1].upcase
puts fruits.join(" ")
