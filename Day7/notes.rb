#read a file
#the class file is build into ruby

#ask for the filename
puts "type in the file name: "
filename = gets.chomp

#open file and save it to opened_file variable

opened_file = File.open(filename)

#print to the terminal screen

puts "Opened file name #{filename}"
puts "=" * 15
print opened_file.read

puts "type in the file name: "
filename = gets.chomp

#open file in append-plus-read mode and store reference in opened_file variable

opened_file = File.open(filename, 'a+')

#ask for a new city name
puts "Add another Philippine city: "
city = gets.chomp

#write city name to the file
opened_file.write(city)
opened_file.write("\n")

#rewind pointer at beginning of file

opened_file.rewind
puts "=" *20

#read entire file from beginning to end

print opened_file.read

#we are done with the file
opened_file.close


# mode  if file exists,  if no file,  pointer position,  can lose data
#  r        keeps          error         beginning             no
#  w        erases         creates       beginning             yes
#  a        keeps          creates       end                   no
#  r+
#  w+
#  a+
