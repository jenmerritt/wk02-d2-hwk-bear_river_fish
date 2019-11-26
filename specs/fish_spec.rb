require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class FishTest < MiniTest::Test

  def test_can_get_fish_name
    fish = Fish.new("Salmon")
    assert_equal("Salmon", fish.name)
  end

end
