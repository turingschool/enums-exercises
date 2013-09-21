gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class PickDesiredValuesTest < Minitest::Test
  # You get the first test for free... it's already passing.
  def test_pick_even_numbers
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    evens = []
    numbers.each do |number|
      evens << number if number.even?
    end
    assert_equal [2, 4, 6, 8, 10], evens
  end

  # This test is missing a single line of code
  def test_pick_odd_numbers
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    odds = []
    numbers.each do |number|
      # write code here
    end
    assert_equal [1, 3, 5, 7, 9], odds
  end

  # This test is missing the whole loop
  def test_pick_words_with_three_letters
    skip
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    selected = []
    # write code here
    assert_equal ["bad", "cat", "dog", "red"], selected
  end

  # From here on out, you're pretty much on your own...

  def test_pick_words_with_more_than_three_letters
    skip
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    # write code here
    assert_equal ["pill", "finger", "blue", "table"], selected
  end

  def test_pick_words_ending_in_e
    skip
    words = ["are", "you", "strike", "thinking", "belt", "piece", "warble", "sing", "pipe"]
    # write code here
    assert_equal ["are", "strike", "piece", "warble", "pipe"], selected
  end

  def test_pick_words_ending_in_ing
    skip
    words = ["bring", "finger", "drought", "singing", "hat", "shoehorning", "purposeful"]
    # write code here
    assert_equal ["singing", "shoehorning"], selected
  end

  def test_select_all_words_containing_e
    skip
    words = ["four", "red", "five", "blue", "pizza", "purple"]
    # write code here
    assert_equal ["red", "five", "blue", "purple"], selected
  end

  def test_pick_dinosaurs
    skip
    animals = ["tyrannosaurus", "teacup_poodle", "achillesaurus", "ankylosaurus", "qingxiusaurus"]
    # write code here
    assert_equal ["tyrannosaurus", "achillesaurus", "ankylosaurus", "qingxiusaurus"], selected
  end
end

class PickDesiredValuesWithSelectTest < Minitest::Test
  def test_pick_even_numbers_with_select
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    evens = numbers.select do |number|
      number.even?
    end
    assert_equal [2, 4, 6, 8, 10], evens
  end
end
