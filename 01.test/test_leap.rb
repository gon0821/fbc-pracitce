require 'test/unit'
require_relative 'leap.rb'

class TestSample < Test::Unit::TestCase
  def test_leap?
    assert_equal true, Sample.leap?(2000)
    assert_equal false, Sample.leap?(2100)
    assert_equal true, Sample.leap?(2004)
    assert_equal false, Sample.leap?(2001)
  end
end
