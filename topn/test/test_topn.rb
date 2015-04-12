require 'minitest/autorun'
require 'topn'

class TopnTest < Minitest::Test
  def test_topn
    assert_equal [100000, 300, 200, 100, 77, 66],
      Topn.get_sorted_n("numbers_list")
  end
end
