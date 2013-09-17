gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class BasicEnumsTest < Minitest::Test
  def test_many_times
    s = ''
    5.times do
      # write code here
    end
    assert_equal 'xxxxx', s
  end

  def test_simple_sum
    skip
    sum = 0
    numbers = [1, 2, 3, 4, 5]
    # write code here
    assert_equal 15, sum
  end

  def test_max_value
    skip
    max_num = 0
    numbers = [2, 16, 6, 50, 12]
    # write code here
    assert_equal 50, max_num
  end
  
end

