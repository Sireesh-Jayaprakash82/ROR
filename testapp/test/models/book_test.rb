require 'C:\Users\Sireesh.jayaprakash\OneDrive - Happiest Minds Technologies Limited\Desktop\Assessment - 3\testapp\test\test_helper.rb'

class BookTest < ActiveSupport::TestCase
  fixtures :books

  def test_book
    one_book = Book.new :title => books(:one).title,
    :review => books(:one).review

    assert one_book.save

    two_book = Book.new :title => books(:two).title,
    :review => books(:two).review

    assert two_book.save

    assert_not_equal one_book.title, two_book.title
  end
end
