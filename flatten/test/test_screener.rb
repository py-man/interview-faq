require 'minitest/autorun'
require 'screener'

class ScreenerTest < Minitest::Test
  def test_flattened_array
    assert_equal [1, 2, 3, 4],
      Screener.makeflat
  end
end
