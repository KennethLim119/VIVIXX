class Client
attr_accessor :name, :email, :account, :address, :contact

  def initialize(name, email, account, address, contact)
    @name = name
    @email = email
    @account = account
    @address = address.to_i
    @contact = contact.to_i
end
end

@potato = Client.new("mm", "abcd@gmail.com", 50000, "abc street",123564)


def greet
puts "enter pin"
main
end

def inf
  puts "hello #{@name}, #{@email}, #{@account}, #{@address}, #{@contact}"
yesno
end



def main
  puts ">"

  @pin = gets.chomp
    case @pin
    when @pin = "0001"
inf
end
end
def yesno
  puts "how much would you like to withdraw"
  n="yes"
  while n=="yes" do
    d=gets.chomp.to_i
    balance(d)
puts "your remaining balance is #{@balance}"
    puts "would you like to withdraw? yes or no"
    n=gets.chomp
    puts "how much would you like to withdraw?"

end
end

@balance = 50000
def balance(d)
  @balance -= d

end
greet
