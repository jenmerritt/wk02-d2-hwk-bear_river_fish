require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Swan", @fish)
    @fish = ["Salmon", "Salmon", "Trout", "Trout", "Mackerel"]
    end

    def test_can_get_river_name
      assert_equal("Swan", @river.name())
    end


end
