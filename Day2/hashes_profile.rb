profile = {
  first_name:'Kenneth',
  last_name:'Lim',
  siblings:3,
  cousins:7,
  Total_Family_Members:6,
  country: 'Philippines',
  height_cm: 170.688,
  prize_money_usd: 5000,
  handed: 10,
  backhand:12
}

profile[:prize_money_usd] = 101_605_085
# Set value for key
puts "#{profile[:prize_money_usd]}"

profile.merge!({ handed: :left, backhand:
  :one_handed })
  # add pairs from other hash
  puts "#{profile[:handed]}#{profile[:backhand]}"
  profile[:siblings] += 1
  puts "#{profile[:siblings]}"
  # siblings
  profile.delete(:height_cm)
  puts "#{profile[:height_cm]}"
  # we don't want height any more
