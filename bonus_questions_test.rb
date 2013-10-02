gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class BonusQuestionsTest < MiniTest::Unit
  def test_7_factorial
    # Example: "Five factorial", written 5!, is
    # 1 * 2 * 3 * 4 * 5
    product = 1
    numbers = [1, 2, 3, 4, 5, 6, 7]
    numbers.each do |number|
      # write code here
    end
    assert_equal 5040, product
  end

  def test_sum_of_factorials
    skip
    sum_of_factorials = 0
    numbers = [1, 2, 3, 4, 5]
    # write code here
    assert_equal 153, sum_of_factorials
  end

  def test_max_value
    skip
    max_num = 0
    numbers = [2, 16, 6, 50, 12]
    # write code here
    assert_equal 50, max_num
  end

end

