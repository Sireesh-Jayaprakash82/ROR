require 'C:\Users\Sireesh.jayaprakash\OneDrive - Happiest Minds Technologies Limited\Desktop\Assessment - 3\testapp\test\test_helper.rb'

class BookTest < ActiveSupport::TestCase
  fixtures :books
  def test_book
    one_book = Book.new :title => books(:one).title,
    :review => books(:one).review

    assert one_book.save
  end
end
