require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')

class BearsTest < MiniTest::Test

  def setup()

    @bear = Bear.new("Winnie", "Pooh")

  end

  def test_can_get_bear_name
    assert_equal("Winnie", @bear.name)
  end

  def test_can_get_bear_type
    assert_equal("Pooh", @bear.type)
  end

  def test_bear_stomach_starts_empty
    assert_equal(0, @bear.food_in_stomach)
  end

  def test_bear_can_take_fish_from_river
    @bear.take_fish_from_river
    assert_equal(1, @bear.food_in_stomach)
  end

end
