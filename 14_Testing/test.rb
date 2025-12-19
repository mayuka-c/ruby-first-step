# MiniTest is a unit testing framework included in standard Ruby library

require "minitest/autorun"

def sum(a, b)
  a + b
end

class TestMathematics < Minitest::Test
  # should start with test_
  def test_sum
    assert_equal(5, sum(2, 3))
  end

  def test_sum_again
    assert_equal(10, sum(7, 3))
  end
end
