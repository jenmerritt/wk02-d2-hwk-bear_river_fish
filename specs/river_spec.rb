require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../bears')
require_relative('../fish')

class RiverTest < MiniTest::Test


end
