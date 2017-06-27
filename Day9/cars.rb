require 'csv'
require 'io/console'
require 'color-console'
require 'colorize'

class Car
  attr_accessor :owner, :username, :pin, :car, :wheel, :color, :exhaust, :engine
  def initialize(hash)
    @owner = hash(:owner)
    @username = hash(:username)
    @pin = hash(:pin)
    @car = hash(:car)
    @wheel = hash(:wheel)
    @color = hash(:color)
    @exhaust = hash(:exhaust)
    @engine = hash(:engine)
end

def self.from_lots_row(row)
  self.new({
    owner: row['owner']
    username: row['username']
    pin: row['pin']
    car: row['car']
    wheel: row['wheel']
    color: row['color']
    exhaust: row['exhaust']
    engine: row['engine']
    })
end

  HEADERS = ['owner', 'username', 'pin', 'car', 'wheel', 'color', 'exhaust', 'engine']

    def to_cvs_row
      CVS::Row.new(HEADERS, [owner, username, pin, car, wheel, color, exhaust, engine])
end
end

def choice
  puts "\n ***Customize your car***"
  puts "1. wheels"
  puts "2. paint"
  puts "3. exhaust"
  puts "4. engine"
  puts "5. exit"
end

 def registration
  ask=true
  while ask==true do
    username_exist=false
    system "cls"
    puts 'Welcome please register first'
    puts "enter your username"
    print ">>> "
    username= gets.chomp
    CSV.foreach(@car_buy, headers: true) do |row|
      car = car.from_lots_row(row)
      if car.username.to_s.upcase==username.upcase
        username_exist=true
        break
  end
end

if username_exist==false
  ask=false
  puts "pin"
  print'>>>'
  pin = gets.chomp
  puts "\n"
  puts "please enter owner's name"
  print">>>"
  owner = gets.chomp
  puts "please type your car model"
  print ">>> "
  car = gets.chomp
  puts "type of wheel"
  print ">>> "
  wheel = gets.chomp
  puts "color of car"
  print ">>> "
  color = gets.chomp
  puts "type of exhaust system"
  print ">>> "
  exhaust = gets.chomp
  puts "type of engine your car has"
  print ">>>"
  engine = gets.chomp

  if username.strip.empty? or owner.strip.empty? or car.strip.empty? or wheel.strip.empty? or color.strip.empty? or exhaust.strip.empty? or engine.strip.empty? or pin.strip.empty? or pin.length !=4
msg ("please try again")
else
  ask = Car.new({
#  owner,username,pin,car,wheel,color,exhaust,engine
owner: owner,
username: username,
pin: pin,
car: car,
wheel: wheel,
color: color,
exhaust: exhaust,
engine: engine
})

CVS.open(@car_buy, 'a+') do |lots|
  lots << car.to_lots_row
end

msg ("saved")
end
else
  msg( "user is taken")
end
end
end

def view_cars
  system "cls"
  puts "\n"
  puts "car list"
  print "owner"
  print "car"
  print "color"
end
