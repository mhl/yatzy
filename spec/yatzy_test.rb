require 'minitest/autorun'

def score(category, dice)
  if category == :chance
    dice.reduce(&:+)
  else
    if dice.all? { |die| die == dice.first }
      50
    else
      0
    end
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

  def test_yatzy_all_different
    assert_equal score(:yatzy, [1, 2, 3, 4, 5]), 0
  end
end
