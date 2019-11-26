require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')


class BearsTest < MiniTest::Test

  def setup
    @bear = Bear.new("Winnie", "Pooh")
  end

  def test_can_get_bear_name
    assert_equal("Winnie", @bear.name)
  end

  def test_can_get_bear_type
    assert_equal("Pooh", @bear.type)
  end

  def test_food_in_stomach_starts_at_zero
    assert_equal(0, @bear.food_in_stomach)
  end

  def test_can_add_fish
    fish = Fish.new("Salmon")
    @bear.eat_fish(fish)
    assert_equal(1, @bear.food_in_stomach)
  end

  def test_can_bear_roar
    assert_equal("ROOAARR", @bear.roar)
  end


end
