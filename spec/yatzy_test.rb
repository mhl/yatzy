require 'minitest/autorun'
# require './blog'

def score(category, dice)
  5
end

class TestYatzy < Minitest::Test

  # def setup
  #   @blog = Blog.new
  # end

  # def test_title_is_treehouse
  #   assert_equal "Treehouse Blog", @blog.title
  # end
  def test_chance_all_ones
    assert_equal score(:chance, [1,1,1,1,1]), 5
  end

  def test_chance_all_twos
    assert_equal score(:chance, [2,2,2,2,2]), 10
  end
end
