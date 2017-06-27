require 'csv'
require 'io/console'
require 'color-console'
require 'colorize'
###parking lot
class ParkingLot
  attr_accessor :location, :owner, :space, :price, :username, :password, :code
  def initialize(hash)
    @location = hash[:location]
    @owner = hash[:owner]
    @price = hash[:price]
    @space = hash[:space]
    @username = hash[:username]
    @password = hash[:password]
    @code = hash[:code]
  end

  def self.from_lots_row(row)
    self.new({
        location: row['location'],
        owner:  row['owner'],
        space: row['space'],
        price: row['price'],
        username: row['username'],
        password: row['password'],
        code: row['code']
      })
  end

    HEADERS = ['location', 'owner', 'space', 'price', 'username', 'password', 'code'] #capital variable is constant

    def to_lots_row
      CSV::Row.new(HEADERS, [location, owner, space, price, username, password, code])
    end
end

###

@db_park='parkinglot.csv'

def pre_code
code = []
  CSV.foreach(@db_park, headers: true) do |row|
    lot = ParkingLot.from_lots_row(row)
    code << lot.code.to_i
  end
return code.max.to_i + 1
end

def code_exist(code)
  check=false
  CSV.foreach(@db_park, headers: true) do |row|
    lot = ParkingLot.from_lots_row(row)
    if lot.code.to_s.to_i == code.to_i
      check=true
      break
    end
  end
  if check==true
    return true
  else
    return false
  end
end

def register_lot

  looop=true
  while looop==true do
  username_exist=false
  system "cls"
  puts "\n"
  puts "="*79
  puts " REGISTER ".center(79, "=")
  puts "="*79
  puts "\n"
  puts "Enter your username: ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  username = gets.chomp
  CSV.foreach(@db_park, headers: true) do |row|
    lot = ParkingLot.from_lots_row(row)
    if lot.username.to_s.upcase==username.upcase
      username_exist=true
      break
    end
  end
  if username_exist==false
    looop=false
  puts "Enter your password: ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  password = STDIN.noecho(&:gets).chomp
  puts "\n"
  puts "Enter your name: ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  owner = gets.chomp
  puts "Enter your location: ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  location = gets.chomp
  puts "Enter your available space: ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  space = gets.chomp
  puts "Enter your price(/m): ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  price = gets.chomp
  if username.strip.empty? or location.strip.empty? or space.strip.empty? or price.strip.empty? or owner.strip.empty? or password.strip.empty? or password.length !=8
    msg("INVALID INPUT")
  else
  #['location', 'owner', 'space', 'price', 'username', 'password']
  lot = ParkingLot.new({
    location: location,
    owner: owner,
    space: space,
    price: price,
    username: username,
    password: password,
    code: pre_code
    })
  CSV.open(@db_park, 'a+') do |lots|
    lots << lot.to_lots_row
  end
  msg("SUCCESSFULLY SAVED")
end###
else
  msg("USERNAME ALREADY EXIST")
end
end
end

def view_lots
  system "cls"
  puts "\n"
  puts "="*79
  puts " PARKING LOT LIST ".center(79, " ").black.on_white
  puts "="*79
  print "OWNER".prepend(" "*5)
  print "LOCATION".prepend(" "*10)
  print "SPACE".prepend(" "*25)
  print "PRICE(/M)".prepend(" "*10)
  print "\n"
  puts "="*79
  CSV.foreach(@db_park, headers: true) do |row|
    lot = ParkingLot.from_lots_row(row)
    print "#{lot.username}".prepend(" "*5)
    print "#{lot.location}".prepend(" "*(10+(5-lot.username.length)))
    print "#{lot.space}".prepend(" "*(25+(10-lot.location.length)))
    print "P#{lot.price.to_f}".prepend(" "*(7+(8-lot.space.length)))
    print "\n"
  end
  print " "*35
  gets.chomp
end

def delete_lot
    lot_list=[]
    existing = false
  puts "Enter code"
  print '>>> '
  code = gets.chomp

  #check if existing
  CSV.foreach(@db_park, headers: true) do |row|
    lot = ParkingLot.from_lots_row(row)
    if lot.username.to_s.upcase == code.upcase
      existing = true
      break
    end
  end

#delete if existing
if existing == true
  CSV.foreach(@db_park, headers: true) do |row|
    lot = ParkingLot.from_lots_row(row)
    if lot.username.to_s.upcase != code.upcase
      lot_list << {location: lot.location, owner: lot.owner, space: lot.space, price: lot.price, username: lot.username, password: lot.password}
    end
  end

  #over write file
  delete_lot = ParkingLot.new({location: "location", owner: "owner", space: "space", price: "price", username: "username", password: "password"})
  CSV.open(@db_park, 'w') do |lots|
    lots << delete_lot.to_lots_row
  end

  #append lot lits
  lot_list.each do |lot|
    delete_lot = ParkingLot.new(lot)
    CSV.open(@db_park, 'a+') do |lots|
      lots << delete_lot.to_lots_row
    end
  end
end
end

def update_lot
    lot_list=[]
    update_list=[]
    existing = false

  #check if existing
  CSV.foreach(@db_park, headers: true) do |row|
    lot = ParkingLot.from_lots_row(row)
    if lot.username.to_s.upcase == @username.upcase
      existing = true
      update_list << {location: lot.location, owner: lot.owner, space: lot.space, price: lot.price, username: lot.username, password: lot.password, code: lot.code}
    else
      lot_list << {location: lot.location, owner: lot.owner, space: lot.space, price: lot.price, username: lot.username, password: lot.password, code: lot.code}
    end
  end

#update if existing
if existing == true
  system "cls"
  puts "\n"
  puts "="*79
  puts " UPDATE INFORMATION ".center(79, "=")
  puts "="*79
  puts "\n"
  puts "Enter Lot Code: ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  code = gets.chomp
  check_code = @owner_lot_list.include? code
  if check_code.to_s == "true"

    puts "Enter Location: ".prepend(" "*30)
    print '>>> '.prepend(" "*30)
    location = gets.chomp
  puts "Enter Available Spaces: ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  space = gets.chomp
  puts "Enter Price: ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  price = gets.chomp
  if location.strip.empty? or space.strip.empty? or price.strip.empty?
    msg("INVALID INPUT")
  else
  #over write file
  update_lot = ParkingLot.new({location: "location", owner: "owner", space: "space", price: "price", username: "username", password: "password", code: "code"})
  CSV.open(@db_park, 'w') do |lots|
    lots << update_lot.to_lots_row
  end

  #append lot lits
  lot_list.each do |lot|
    update_lot = ParkingLot.new(lot)
    CSV.open(@db_park, 'a+') do |lots|
      lots << update_lot.to_lots_row
    end
  end
  #updated lot
  update_list.each do |lot|
    if lot[:code].to_i == code.to_i
    lot[:code]=code
    lot[:location]=location
    lot[:space]=space
    lot[:price]=price
  end
  end
  #append updated lot
  update_list.each do |lot|
    update_lot = ParkingLot.new(lot)
    CSV.open(@db_park, 'a+') do |lots|
      lots << update_lot.to_lots_row
    end
  end
  msg("UPDATED SUCCESSFULLY")
end##
else
  msg("INVALID CODE")
end
end
end
###update space
def update_space
    lot_list=[]
    update_list=[]
    existing = false

  #check if existing
  CSV.foreach(@db_park, headers: true) do |row|
    lot = ParkingLot.from_lots_row(row)
    if lot.username.to_s.upcase == @username.upcase
      existing = true
      update_list << {location: lot.location, owner: lot.owner, space: lot.space, price: lot.price, username: lot.username, password: lot.password, code: lot.code}
    else
      lot_list << {location: lot.location, owner: lot.owner, space: lot.space, price: lot.price, username: lot.username, password: lot.password, code: lot.code}
    end
  end

#update if existing
if existing == true
  system "cls"
  puts "\n"
  puts "="*79
  puts " UPDATE SPACE ".center(79, "=")
  puts "="*79
  puts "\n"
  puts "Enter Lot Code: ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  code = gets.chomp
  check_code = @owner_lot_list.include? code
  if check_code.to_s == "true"

  puts "Enter Available Spaces: ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  space = gets.chomp
  if space.strip.empty?
    msg("INVALID INPUT")
  else
  #over write file
  update_lot = ParkingLot.new({location: "location", owner: "owner", space: "space", price: "price", username: "username", password: "password", code: "code"})
  CSV.open(@db_park, 'w') do |lots|
    lots << update_lot.to_lots_row
  end

  #append lot lits
  lot_list.each do |lot|
    update_lot = ParkingLot.new(lot)
    CSV.open(@db_park, 'a+') do |lots|
      lots << update_lot.to_lots_row
    end
  end
  #updated lot
  update_list.each do |lot|
    if lot[:code].to_i == code.to_i
    lot[:space]=lot[:space].to_i+space.to_i
    end
  end
  #append updated lot
  update_list.each do |lot|
    update_lot = ParkingLot.new(lot)
    CSV.open(@db_park, 'a+') do |lots|
      lots << update_lot.to_lots_row
    end
  end
    msg("UPDATED SUCCESSFULLY")
  end##
  else
    msg("INVALID CODE")
  end
end
end
###

@username=''
@fullname=''
@password=''
def msg(msg)
  system "cls"
  puts "\n\n\n\n\n\n\n"
  puts "="*79
  puts "\n"
  puts msg.center(79, " ")
  puts "\n"
  puts "="*79
  gets.chomp
end
@owner_lot_list=[]
def log_in
  #looop=true
  #while looop==true
    system "cls"
    puts "\n"
    puts "="*79
    puts " LOG IN ".center(79, "=")
    puts "="*79
    puts "\n"
    puts " >>> USERNAME <<<".center(79, " ")
    print " ".prepend(" "*35)
    username=gets.chomp
    puts "\n"
    puts " >>> PASSWORD <<<".center(79, " ")
    print " ".prepend(" "*35)
    password = STDIN.noecho(&:gets).chomp
    CSV.foreach(@db_park, headers: true) do |row|
      lot = ParkingLot.from_lots_row(row)

      if lot.username.to_s.upcase == username.upcase and lot.password.to_s.upcase == password.upcase
        @username=username
        @fullname=lot.owner
        @password=password
        @owner_lot_list << lot.code
      end
    end

    if @username != ""
      #looop=false
      lot_owner_screen
    else
      msg("INVALID USERNAME AND PASSWORD")
    end
  #end
end
def add_new_lot
  system "cls"
  puts "\n"
  puts "="*79
  puts " ADD NEW LOT ".center(79, "=")
  puts "="*79
  puts "\n"
  puts "Enter your location: ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  location = gets.chomp
  puts "Enter your available space: ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  space = gets.chomp
  puts "Enter your price(/m): ".prepend(" "*30)
  print '>>> '.prepend(" "*30)
  price = gets.chomp
  #if location.strip != "" or space.strip != "" or price.strip != ""
  #['location', 'owner', 'space', 'price', 'username', 'password']
  if location.strip.empty? or space.strip.empty? or price.strip.empty?
    msg("INVALID INPUT")
  else
  lot = ParkingLot.new({
    location: location,
    owner: @fullname,
    space: space,
    price: price,
    username: @username,
    password: @password,
    code: pre_code
    })
  CSV.open(@db_park, 'a+') do |lots|
    lots << lot.to_lots_row
  end
  msg("SUCCESSFULLY SAVED")
# else
#   msg("INVALID INPUT")
 end
end
def lot_owner_screen
  looop=true
  existing=false
  while looop==true
    system "cls"
    puts "\n\n"
    puts "="*79
    puts "===== Welcome #{@fullname.upcase} ==================== PARK NOW ".concat("="*(79-(@username.length+45)))
    puts "="*79
    puts " | = [S]PACE = | = [U]PDATE = | = [V]IEW = | = [A]DD = | = [L]OGOUT = | ".center(79, "=")
    puts "="*79
    puts "\n"
    puts " >>> ENTER YOUR CHOICE <<< ".center(79, " ")
    print " ".prepend(" "*35)
    choice = STDIN.getch
    if choice.upcase == ?V
      CSV.foreach(@db_park, headers: true) do |row|
        lot = ParkingLot.from_lots_row(row)
        if lot.username.to_s.upcase == @username.upcase
          existing=true
          break
        end
      end
    ####
    system "cls"
    puts "\n"
    puts "="*79
    puts " VIEW PARKING LOT".center(79, "=")
    puts "="*79
    puts "\n\n"
  if existing==true
    print "CODE".prepend(" "*5)
    print "LOCATION".prepend(" "*10)
    print "SPACE".prepend(" "*25)
    print "PRICE(/M)".prepend(" "*10)
    print "\n"
    puts "="*79
    CSV.foreach(@db_park, headers: true) do |row|
      lot = ParkingLot.from_lots_row(row)
      if lot.username.to_s.upcase == @username.upcase
        print "#{lot.code}".prepend(" "*5)
        print "#{lot.location}".prepend(" "*(10+(4-lot.code.length)))
        print "#{lot.space}".prepend(" "*(25+(10-lot.location.length)))
        print "P#{lot.price.to_f}".prepend(" "*(7+(8-lot.space.length)))
        print "\n"

      end
    end
    puts "\n\n\n\n"
    puts ">>> PRESS ENTER TO GO BACK <<<".center(79, " ")
    print " ".prepend(" "*35)
    gets.chomp
    else
            msg("NO LOTS YET")
  end
####
  elsif choice.upcase == ?L
      @owner_lot_list=[]
      looop=false
    elsif choice.upcase == ?S
      update_space
    elsif choice.upcase == ?U
      update_lot
    elsif choice.upcase == ?A
      add_new_lot
  # else
  #     msg("INVALID CHOICE")
    end
  end
end
def logo

  system 'cls'
  puts %q{


                                                            _   ______ _       __   __
                                  (▓▓) █████████████       / | / / __ \\ |     / /  / /
                                  (▓) ███████████████     /  |/ / / / / | /| / /  / /
        ____  ___    ____  __ __   █████████ ███ █████   / /|  / /_/ /| |/ |/ /  /_/
       / __ \\/   |  / __ \\/ //_/     ███████ ███ █████  /_/ |_/\\____/ |__/|__/  (_)
      / /_/ / /| | / /_/ / , <        ██████ ███ █████
     / \___/ ___ |/ _, _< /| |     ████████████████████
    /_/   /_/  |_/_/ |_/_/ |_|    ███████████████████████
                                ██ (█)(█) ██████ (█)(█)  █
                                █(█     (█)████(█)    (█)█
                                 (█     (█)    (█     (█)
                                   (█)(█)        (█)(█)
              }


  puts "\n"
  puts"  ╔══════════╗         ╔═══════════╗         ╔══════════╗   ".center(80, " ").black.on_white
  puts"  ║  [P]ark  ║         ║[R]egister ║         ║  [L]ogin ║   ".center(80, " ").black.on_white
  puts"  ╚══════════╝         ╚═══════════╝         ╚══════════╝   ".center(80, " ").black.on_white
    print "\n\n"

end
looop=true
while looop=true do
  logo
  puts ">>> PRESS LETTER TO START <<<".center(79, " ")
  print " ".prepend(" "*36)
choice = STDIN.getch

  if choice.upcase == ?R
    register_lot
  elsif choice.upcase == ?L
    log_in
  elsif choice.upcase == ?P
    view_lots
  elsif choice.upcase == ?E
    exit
  end
end

#update_lot
#register_lot
