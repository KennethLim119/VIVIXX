def my_method(first)
  puts 'hello world'
end

begin
  my_method() #missing 1 argument

rescue ArgumentError # error's class
  puts "no argument was passed!"
end
