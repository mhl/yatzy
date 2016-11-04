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
    assert_equal 5, score(:chance, [1,1,1,1,1])
  end

  def test_chance_all_twos
    assert_equal 10, score(:chance, [2,2,2,2,2])
  end

  def test_yatzy_all_ones
    assert_equal 50, score(:yatzy, [1, 1, 1, 1, 1])
  end

  def test_yatzy_all_different
    assert_equal 0, score(:yatzy, [1, 2, 3, 4, 5])
  end
end
