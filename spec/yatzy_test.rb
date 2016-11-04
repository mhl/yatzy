require 'minitest/autorun'

class Yatzi
  attr_reader :dice

  def initialize(dice)
    @dice = dice
  end

  def chance
    dice.reduce(&:+)
  end

  def yatzy
    dice.uniq.size == 1 ? 50 : 0
  end

  def ones
    dice.select { |i| i == 1 }.reduce(&:+)
  end
end

def score(category, dice)
  Yatzi.new(dice).send(category)
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

  def test_ones_with_three_ones
    assert_equal 3, score(:ones, [1, 3, 4, 1, 1])
  end

  def test_ones_with_five_ones
    assert_equal 5, score(:ones, [1, 1, 1, 1, 1])
  end
end
