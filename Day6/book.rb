class Book
  class Nobook < StandardError
  end
  attr_accessor :book_title, :book_author
  def initialize(book_title, book_author)

    @book_title = book_title
    @book_author = book_author

  end
  def validate_title(title)
    title = title.strip
    raise Nobook, "Book '#{title}' not found" if title.empty?
@book_title = title

end
def task
  puts "Please enter book title"
  print '= '
  title = gets.chomp
  validate_title(title)

  rescue Nobook => e
    puts 'not found'
    retry
end
end
