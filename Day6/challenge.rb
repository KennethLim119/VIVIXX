#update

require 'test/unit'
require_relative 'book'

class BookTest < Test::Unit::TestCase
  def test_book_title
    book = Book.new('Harry Potter', 'JK Rowling')
    book.task
    assert_equal('Harry Potter', book.book_title)
  end
end
