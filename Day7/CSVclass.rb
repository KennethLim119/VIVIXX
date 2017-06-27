class Person

  attr_accessor :firstname, :lastname, :suburb, :age, :gender

  def initialize(hash)
    @firstname = hash[:firstname]
    @lastname = hash[:lastname]
    @suburb = hash[:suburb]
    @age = hash[:age]
    @gender = hash[:gender]
  end


  #initialize from CSV::row
  def self.from_csv_row(row)
    self.new({
      firstname: row['firstname'],
      lastname: row['lastname'],
      suburb: row['subrub'],
      age: row['age'],
      gender: row['gender']
      })
    end

require 'CSV'

  HEADERS = ['firsname', 'lastname', 'suburb', 'age', 'gender']

  #Convert to CSV::row
  def to_cvs_row
    CSV::Row.new(HEADERS, [firstname, lastname, suburb, age, gender])
  end
end
#Create new Person
person = Person.new(
  firstname: "john",
  lastname: "what",
  suburb: "brishane",
  age: 60,
  gender: "male"
  )

  #append person to CSV file
  CSV.open('people.csv', 'a+') do |csv|
    csv << person.to_cvs_row
  end

  people = []
#loop over each row in the CSV

CSV.foreach('people.csv', headers: true) do |row|
  #convert from CSV::Row to Person instance
  person = Person.from_csv_row(row)
  #add object to array
  people << person
  #Display first and last name
  puts "#{person.firstname} #{person.lastname}"
end
