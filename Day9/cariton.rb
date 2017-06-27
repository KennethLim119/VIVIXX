#handle bar, owner, body type, wheels

require 'csv'
require 'io/console'
require 'color-console'
require 'colorize'

class Cart
  attr_accessor :owner, :username, :pin, :body, :color, :wheel, :handle

def initialize(hash)
  @owner = hash[:owner]
  @username = hash[:username]
  @pin = hash[:pin]
  @body = hash[:body]
  @color = hash[:color]
  @wheel = hash[:wheel]
  @handle = hash[:handle]
end

def self.from_lots_row(row)
  self.new({
    owner: row['owner'],
    username: row['row'],
    pin: row['pin'],
    body: row['body'],
    color: row['color'],
    wheel: row['wheel'],
    handle: row ['handle']
    })
  end

  HEADERS = ['owner', 'username', 'pin', 'body', 'color', 'wheel', 'handle']

  def to_cvs_row

    CVS::Row.new(HEADERS, [owner, username, pin, body, color, wheel, handle])
end
end

def register
  ask=true
  while ask==true do
    username_exist=false
    system "cls"
    puts 'Welcome please register first'
    puts "enter your username"
    print ">>> "
    username= gets.chomp
    CSV.foreach(@cart_buy, headers: true) do |row|
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
  puts "please enter username"
  print">>>"
  username = gets.chomp
  puts "please type of cart will you be having?"
  print ">>> "
  cart = gets.chomp
  puts "type of body do you want?"
  print ">>> "
  body = gets.chomp
  puts "what color will your cart be?"
  print ">>> "
  color = gets.chomp
  puts "type of wheel do you want?"
  print ">>> "
  wheel = gets.chomp
  puts "what type of handle do you want in your cart?"
  print ">>> "
  handle = gets.chomp
  if username.strip.empty? or owner.strip.empty? or cart.strip.empty? or wheel.strip.empty? or color.strip.empty? or body.strip.empty? or handle.strip.empty? or pin.strip.empty? or pin.length !=4
msg ("please try again")
else
  ask = Cart.new({
#  owner,username,pin,car,wheel,color,exhaust,engine
owner: owner,
username: username,
pin: pin,
cart: cart,
body: body,
color: color,
wheel: wheel,
handle: handle,
})

CVS.open(@cart_buy, 'a+') do |lots|
  lots << cart.to_lots_row
end

msg ("saved")
end
else
  msg( "user is taken")
end
end
end

def view_carts
  system "cls"
  puts "\n"
  puts "cart list"
  print "owner"
  print "cart"
  print "body"
  print "color"
  print "wheels"
  print "handle"

  CSV.foreach(@cart_buy, headers: true) do |row|
    cart = Cart.from_lots_row(row)
    print "#{cart.owner}"
  end
end

def create_cart
  system "cls"
  puts "create cart "

  puts "Enter your cart body: "
  print '>>> '
  @body = gets.chomp
  puts "enter wheel type"
print '>>> '
  @wheel = gets.chomp
  puts "what color is your cart?"
  @color = gets.chomp
  if @body.strip.empty? or @wheel.strip.empty? or @color.strip.empty?
    msg("INVALID INPUT")
  else
  cart = Cart.new({
    owner: @fullname,
    username: @username,
    pin: @pin,
    })
  CSV.open(@cart_buy, 'a+') do |lots|
    carts << cart.to_lots_row
  end
  msg("created cart")
 end
end

register
newcart
