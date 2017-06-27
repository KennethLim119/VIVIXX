def pick

@name.each do |info|

  puts "#{@x}. #{info[:Candidate]} = #{info[:votes]}"
  @x += 1
end
end

def questions
  pick
puts "The candidates are: #{@to_vote}"
choice = gets.chomp.to_i
puts "please pick 1 candidate #{@to_vote[choice-1][:candidate]}"
amount = gets.chomp
puts "you have ordered #{amount.to_i} #{@to_vote[choice-1][:Steak]}"

@total = @total + amount.to_i * @to_vote[choice-1][:price]
end

n="no"
while n=="no" do
  pick
puts "Are you sure about your vote? (yes or no)"
  n=gets.chomp
  if n == "no"
@x = 1
  end
end
#Global Variables
@price
@total = 0
@x = 1
@choice
