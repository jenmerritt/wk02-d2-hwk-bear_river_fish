require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Mackarel")
  end

def test_can_get_fish_name
  assert_equal("Salmon", @fish1.name)
end

end
