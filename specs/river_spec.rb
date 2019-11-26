require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class RiverTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Mackarel")

    @fish_in_river = [@fish1, @fish2, @fish3]

    @river = River.new("Swan", @fish_in_river)

  end

  def test_can_get_river_name
    assert_equal("Swan", @river.name)
  end

  def test_can_get_number_of_fish_in_river
    assert_equal(3, @river.fish_in_river)
  end

  def test_can_find_fish_by_name
    fish = @river.find_fish_by_name("Salmon")
    assert_equal("Salmon", fish.name)
  end

  def test_can_remove_fish
    @river.remove_fish(@fish1)
    assert_equal(2, @river.fish_in_river)
  end

  def test_bear_takes_fish_from_river
    bear = Bear.new("Winnie", "Pooh")
    @river.bear_takes_fish_from_river(@fish1, bear)
    assert_equal(2, @river.fish_in_river)
    assert_equal(1, bear.food_in_stomach)
  end

end
