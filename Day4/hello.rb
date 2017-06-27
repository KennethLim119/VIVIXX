#greetings
#make order


@name = ''


system"cls"
puts 'hello'
enter = gets.chomp

system 'cls'
print 'Please input your name'
@name = gets.chomp


puts "Hello #{@name} how may i help you?"

def convert
puts "Convert:"
puts """(1) Celcius to Fahrenheit.
(2) Fahrenheit to Celcius.
(3) Kilogram to Pounds.
(4) US dollars to PH pesos.
(5) Solve the area of a triangle.
(6) Taxi fare.
(7) Exit.
"""


end
