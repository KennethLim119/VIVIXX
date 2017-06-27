class InvalidNameError < StandardError
end

def validate_name(name)
  name = name.strip #Trim whitespace
  raise InvalidNameError,"He '#{name}' Who Must Not Be Named?" if name.empty?
  name
end

begin

  validate_name('Voldemort') #fine
  validate_name('  ') #error!

rescue InvalidNameError => e
  puts e.message #=>name '' must not be empty

end

def ask_for_name
puts 'He who must not be named:'
print '> '
name = gets.chomp

validate_name(name)

rescue InvalidNameError => e
  puts 'Wrong name'
  retry
end

username = ask_for_name
