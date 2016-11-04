require 'minitest/autorun'
# require './blog'

class TestYatzy < Minitest::Test

  # def setup
  #   @blog = Blog.new
  # end

  # def test_title_is_treehouse
  #   assert_equal "Treehouse Blog", @blog.title
  # end
  def test_chance
    assert_equal score(:chance, [1,1,1,1,1]), 5
  end
end