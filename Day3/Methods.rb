def pass(options)
  fname = options[:fname]
  lname = options[:lname]

  puts "Her name is #{fname} #{lname}"
end

  pass({fname:'Alice', lname:'Jones'})

# short cut pass_me_option first_name:'Alice' last_name: 'Jones'


test
symbol
d30
num


puts :test.to_s
puts :symbol.to_s
puts :symbol.to_s.gsub("_"," ")

number1 = :d30.to_s.gsub("d", "").to_i
number2 = :num100.to_s.gsub("num", "".to_i)
puts number1+number2s
