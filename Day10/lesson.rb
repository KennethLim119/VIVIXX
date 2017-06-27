cats = [
Cat.new('Purry', :black),
Cat.new('Scratchy', :white),
Cat.new('Feral', :fawn),
Cat.new('Tiny', :fawn),
Cat.new('Leo', :white)
]

#pick only :white cats
white_cats = cats.select do |cat|
  cat.color == :white
end

# => [Cat('scratchy', :white), Cat('leo',:white)]

#white_cats = cats.select do |cat|
cat.color == :white #true if color is white, false if not


white_cats = cats.select { |cat| cat.color == :white}

cats = [Cats.new('Purry', :black), Cats.new('Scratchy', :white), Cats.new('Feral', :fawn), Cat.new('Tiny', :fawn), Cat.new('Leo', :white)]

cats_color = cats.color(black, white, fawn, fawn, white)

all_cats_color = cats.map { |cat| cat.color}

unique_cat_color = all_cat_color.uniq
