gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class BasicEnumsTest < Minitest::Test
  def test_solve_for_x
    s = ''
    5.times do
      # write code here
      s << "x"
    end
    assert_equal 'xxxxx', s
  end

  def test_simple_sum
    sum = 0
    numbers = [1, 2, 3, 4, 5]
    # write code here
    numbers.each { |number| sum += number }
    assert_equal 15, sum
  end

  def test_simple_factorial
    skip
    sum_of_factorials = 0
    numbers = [1, 2, 3, 4, 5]
    # write code here
    assert_equal 153, sum_of_factorials
  end
end

