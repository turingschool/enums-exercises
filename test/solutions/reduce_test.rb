gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class ReduceTest < Minitest::Test

  def test_sum_a_list_of_numbers
    numbers = [32, 1, 21, 5, 81, 333]
    sum = numbers.reduce(0) do |sum, number|
      sum + number
    end
    assert_equal 473, sum
  end

  def test_subtract_list_of_numbers
    numbers = [28, 12, 38, 1, 91]
    difference = numbers.reduce(0) do |difference, number|
      difference - number
    end
    assert_equal -170, difference
  end

  def test_multiply_list_of_numbers
    numbers = [2, 3, 5, 7]
    product = numbers.reduce(1) do |product, number|
      product * number
    end
    assert_equal 210, product
  end

  def test_divide_list_of_numbers
    numbers = [2, 2, 2, 5, 7]
    quotient = numbers.reduce(560) do |quotient, number|
      quotient / number
    end
    assert_equal 2, quotient
  end

  def test_capitize_keywords
    keywords = ["fish", "blue"]
    phrase = keywords.reduce('one fish two fish red fish blue fish') do |phrase, keyword|
      phrase.gsub(keyword, keyword.upcase)
    end
    assert_equal 'one FISH two FISH red FISH BLUE FISH', phrase
  end

  def test_add_second_value
    elements = [["a", 1], ["b", 9], ["c", 21]]
    sum = elements.reduce(0) do |sum, element|
      sum + element[1]
    end
    assert_equal 31, sum
  end

  def test_subtract_smallest_value
    elements = [[8, 5, 3], [1, 9, 11], [4, 7, 2], [19, 34, 6]]
    difference = elements.reduce(100) do |difference, element|
      difference - element.min
    end
    assert_equal 88, difference
  end

end