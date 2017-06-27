class Eat
def initialize (first_pie, second_pie)
  @first_pie = first_pie
  @second_pie = second_pie

end
def validate_name(hot)
@hot = hot.strip
raise Eat, "He who ate my'#{@hot}' pie " if @hot.empty?
@hot

end

begin

  validate_pie('yummy')
  validate_pie(' ')

rescue Eat => e
  puts e.message

end

def fav_pie
  puts 'enter your favorite pie:'
  print '=  '
  @hot = gets.chomp

  validate_pie(@hot)

rescue Eat => e
  puts 'another pie'
  retry
end
end
