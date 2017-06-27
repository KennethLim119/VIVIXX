$candidate=[
  {candidate: 'Mike', votes: 0},
  {candidate: 'Reggie', votes: 0},
  {candidate: 'Kenneth', votes: 0},
  {candidate: 'Trevor', votes: 0},
]
$name=""
$voterNum=1
$votes=Array.new
$totalVotes=0
  $ind=0
  $ind2=[]
  #$fortie=""
def showCandidate
  puts "CANDIDATES"
  puts '__________________________'
  for x in 0..$candidate.length-1
      puts "#{x+1}. #{$candidate[x][:candidate]}"
  end
  puts '_________________________'
end
def banner
  puts '*'*79
  puts "VIVIXX VOTING SYSTEM".center(79, "*")
  puts '*'*79
end
def getProf
  puts "Give me your name."
  print "What is your name: "
  $name=gets.chomp.strip
end
def getVote

  n=true
  while n==true do
    system "cls"
    banner
    showCandidate
    getProf
if $name.upcase != "E"
    puts "Your are voter number #{$voterNum}"
    print "Enter the number of your vote #{$name.upcase}: "
  vote=gets.chomp

  if vote.to_i>=1 and vote.to_i<=$candidate.length
    $candidate[vote.to_i-1][:votes]+=1
    $voterNum+=1
    $totalVotes+=1
  elsif vote.upcase=='E'
    n=false
  else
      puts "Invalid vote"

  end
else
  n=false
end
end
getWinner
end

def getWinner
  system "cls"
  banner
puts "_"*79
  for x in 0..$candidate.length-1
    puts "#{$candidate[x][:candidate]} = VOTES: #{$candidate[x][:votes]} =  #{($candidate[x][:votes].to_f/$totalVotes).to_f*100}% #{'#'*$candidate[x][:votes].to_i}"
    $votes.push($candidate[x][:votes])
  end
puts "_"*79

# for x in 0..$candidate.length-1
#
#   puts $candidate[x][:candidate].concat(" ") + ('#'*$candidate[x][:votes].to_i)
#
# end


counter=0
  for x in 0..$candidate.length-1
    if $candidate[x][:votes]==$votes.max
      $ind=x
      break
    end
  end
for x in 0..$candidate.length-1
  if $votes.max != 0
  if $candidate[x][:votes]==$votes.max
    counter+=1

  end
  if $candidate[x][:votes] != 0
    $ind2.insert(0, x)
  end
  end
end
  # if $ind.length>=2
  #   puts "We have a tie."
  #   for x in 0..$ind.length-1
  #     puts "#{$candidate[$ind[x].to_i][:candidate]} with #{$candidate[$ind[x].to_i][:votes]} votes."
  #   end
  #
  # else

if counter>=2
  puts "It's a tie."
  for x in 0..$ind2.length-1
    puts "#{$candidate[x][:candidate] } with #{$candidate[x][:votes]} votes"
  end

  #puts $candidate.sort

  #getVote
elsif counter==0
  puts "No votes yet."
else
    puts "The winner is #{$candidate[$ind.to_i][:candidate]} with #{$candidate[$ind.to_i][:votes]} votes."
end
end

def exeProgram


getVote


end

exeProgram
