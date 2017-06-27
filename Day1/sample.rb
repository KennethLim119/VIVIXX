#Declare Initial Variables
@hasOrder = false #no order yet
@orderDone = false #we're jsut starting so, order is not yet done
@balance = 0 #balance is zero at first
@order = "" #no orders yet, it's blank
@finished = false

# Declare the functions/definitions

def greet #function to ask for the name, and greet.. ask for choice
  puts """
  _.._..,_,_
 (          )
  ]~,\"-.-~~[
.=])' (;  ([
| ]:: '    [
'=]): .)  ([
  |:: '    |
   ~~----~~s
  """
  puts "### WELCOME TO JEFF'S CAFE!! ###"
  puts "Hi there!, what's your name?"
  puts ">"
  @custName = gets.chomp
  puts "Hi #{@custName}! Michael is dead."
  puts "I didn't kill him to get a job though..I really didn't"
  puts "Anyway, what do you want? Just enter the number"
end

def showMenu #function that shows the menu
  if @hasOrder #if customer has order, show him/her including the balance
    puts ""
    puts "****Your order/orders for now: #{@order}"
    puts "****Your balance is $#{@balance}"
    puts "****Anything else?"
    puts ""
  end
  puts "**1. Coffee ($2)"
  puts "**2. Beer ($4)"
  puts "**3. Pizza ($10)"
  puts "**4. Fries ($1)"
  puts "**5. Burger ($3)"
  if @hasOrder #if he has order  add a new item.
    puts "**6. Nah! That's All."
  end
end

def getOrder #gets order number
  puts ">"
  @orderNumber = gets.chomp
  case @orderNumber # a case statement like... if he entered 1, then do the following
  when "1"
    @order += "Coffee | "
    @balance += 2
    puts "############################"
    puts "Yeahh, coffee is life, that will be $2!"
    @hasOrder = true
  when "2"
    @order += "Beer | "
    @balance += 4
    puts "############################"
    puts "Beer would be $4"
    @hasOrder = true
  when "3"
    @order += "Pizza | "
    @balance += 10
    puts "############################"
    puts "Pizaaaaa!, that will be $10!"
    @hasOrder = true
  when "4"
    @order += "Fries | "
    @balance += 1
    puts "############################"
    puts "I love fries too!, that will be $1!"
    @hasOrder = true
  when "5"
    @order += "Burger | "
    @balance += 5
    puts "############################"
    puts "Burger ! Burger ! Burger, that will be $3!"
    @hasOrder = true
  when "6"
    finishOrder
  else
    puts "############################"
    puts "Duh!? Just a number from one to six please."
    getOrder
  end
end

def finishOrder #when customer picks 6, you stop showing the menu by making the value of orderdone true
  @orderDone = true
  puts "You need to pay a total of $#{@balance}"
  puts "How much is your money? I can't actually see it."
  puts ">"
  @payment = gets.chomp.to_i
  if @payment < @balance
    puts "That's not enough.. >.>"
    puts "############################"
    finishOrder
  else
    finishProgram
  end
end
  #start, greet the customer
  #while the order is not yet done, show menu and ask for the order
def startProgram
  greet
  while @orderDone==false
      showMenu
      getOrder
  end
    #if the order is Done and orderDone becomes true, finalize order
  if @finsihed == false
    finishOrder
  end
end

def finishProgram
  if @payment-@balance == 0
    puts "Thanks #{@custName}! Come again!"
  else
    puts "Thanks!! Here's your $#{@payment-@balance} change. Come again #{$custName}!"
    finished = true;
  end
end

startProgram
