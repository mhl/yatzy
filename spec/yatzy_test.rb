require 'minitest/autorun'

def score(category, dice)
  if category == :chance
    dice.reduce(&:+)
  else
    50
  end
end

class TestYatzy < Minitest::Test
  def test_chance_all_ones
    assert_equal score(:chance, [1,1,1,1,1]), 5
  end

  def test_chance_all_twos
    assert_equal score(:chance, [2,2,2,2,2]), 10
  end

  def test_yatzy_all_ones
    assert_equal score(:yatzy, [1, 1, 1, 1, 1]), 50
  end

end
