class Client
  def initialize(bank)
    @bank = bank
  end

  def clients
    puts "client details"
    puts "name #{@bank['name']}"
    puts "email #{@bank['email']}"
    puts "account #{@bank['account']}"
    puts "address #{@bank['address']}"
    puts "contact #{@bank['contact']}"
    puts "=" *20
  end
end

def greet
puts "enter pin"
end

def main
  puts ">"
  @pin = gets.chomp
    case @pin
    when @pin = "0001"
@mm.clients

yes
end
end

def yes
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
#clients
@mm = Client.new({"name" => "mm", "email" => "abcd@gmail.com", "account" => "50000", "address" => "abc street", "contact" => "123564"})

greet
main
