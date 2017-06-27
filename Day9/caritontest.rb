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


puts "pick the number of your choice"
print " "
pick = STDIN.getch

if pick == ?1
  log_in
elsif pick == ?2
  register
elsif pick == ?3
  view_carts
else
  exit_cart
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
        cart = cart.from_lots_row(row)
        if cart.username.to_s.upcase==username.upcase
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
    ask = cart.new({
  #  owner,username,pin,cart,wheel,color,exhaust,engine
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

def log_in
  system "cls"
      puts " LOG IN ".center(79, "=")
      puts " >>> USERNAME <<<".center(79, " ")
      print " ".prepend(" "*35)
      username=gets.chomp
      puts " >>> PASSWORD <<<".center(79, " ")
      print " ".prepend(" "*35)
      password = gets.chomp
      CSV.foreach(@cart_buy, headers: true) do |row|
        lot = cart.from_lots_row(row)

        if cart.username.to_s.upcase == username.upcase and cart.pin.to_s.upcase == pin.upcase
          @username=username
          @fullname=owner
          @pin=pin
          @cart_owner << lot.code
        end
      end

def view_carts

def exit_cart
  puts "good bye!"
end
end
end
