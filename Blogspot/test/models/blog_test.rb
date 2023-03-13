require 'C:\Users\Sireesh.jayaprakash\OneDrive - Happiest Minds Technologies Limited\Desktop\Assessment - 3\Blogspot\test\test_helper.rb'

class BlogTest < ActiveSupport::TestCase
  fixtures :blogs
  def test_blog
    one_blog = Blog.new :name => blogs(:one).name,
    :subject => blogs(:one).subject,
    :description => blogs(:one).description

    assert one_blog.save
  end
  #   assert true
  # end
end
