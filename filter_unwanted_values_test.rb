gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FilterUnwantedValuesTest < Minitest::Test
  def test_remove_zeros
    numbers = [2, 93, 7, 0, 0, 1, 0, 31, 0, 368]
    filtered = []
    numbers.each do |number|
      # write code here
    end
    assert_equal [2, 93, 7, 1, 31, 368], filtered
  end

  def test_remove_vowels
    skip
    letters = "all your base are belong to us".chars
    # write code here
    assert_equal "ll r bs r blng t s", remaining.join
  end

  def test_remove_numbers_divisible_by_3
    skip
    numbers = (1..20)
    # write code here
    expected = [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20]
    assert_equal expected, remaining
  end

  def test_remove_words_with_more_than_three_letters
    skip
    words = %w(pill bad finger cat blue dog table red)
    # write code here
    assert_equal %w(bad cat dog red), remaining
  end

  def test_remove_words_ending_in_e
    skip
    words = %w(are you strike thinking belt piece warble sing pipe)
    # write code here
    assert_equal %w(you thinking belt sing), remaining
  end

  def test_remove_words_ending_in_ing
    skip
    words = %w(drought singing hat shoehorning purposeful)
    # write code here
    assert_equal %w(drought hat purposeful), remaining
  end
end

