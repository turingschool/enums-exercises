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
    words = [
      "pill", "bad", "finger", "cat",
      "blue", "dog", "table", "red"
    ]
    selected = []
    # write code here
    assert_equal ["bad", "cat", "dog", "red"], selected
  end

  # From here on out, you're pretty much on your own...

  def test_pick_words_with_more_than_three_letters
    skip
    words = [
      "pill", "bad", "finger", "cat",
      "blue", "dog", "table", "red"
    ]
    # write code here
    assert_equal ["pill", "finger", "blue", "table"], selected
  end

  def test_pick_words_ending_in_e
    skip
    words = [
      "are", "you", "strike",
      "thinking", "belt", "piece",
      "warble", "sing", "pipe"
    ]
    # write code here
    assert_equal ["are", "strike", "piece", "warble", "pipe"], selected
  end

  def test_pick_words_ending_in_ing
    skip
    words = [
      "bring", "finger", "drought", "singing",
      "hat", "shoehorning", "bingo", "purposeful"
    ]
    # write code here
    assert_equal ["bring", "singing", "shoehorning"], selected
  end

  def test_select_all_words_containing_e
    skip
    words = ["four", "red", "five", "blue", "pizza", "purple"]
    # write code here
    assert_equal ["red", "five", "blue", "purple"], selected
  end

  def test_pick_dinosaurs
    skip
    animals = [
      "tyrannosaurus", "teacup poodle", "achillesaurus",
      "ankylosaurus", "narwhal", "qingxiusaurus",
      "duck-billed platypus", "sealion", "slime eel"
    ]
    # write code here
    expected = [
      "tyrannosaurus", "achillesaurus", "ankylosaurus", "qingxiusaurus"
    ]
    assert_equal expected, selected
  end

  def test_pick_floats
    skip
    floats = [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]
    # write code here
    expected = [1.4, 3.5, 4.9, 9.1, 8.0]
    assert_equal expected, selected
  end

  def test_pick_arrays
    skip
    array = ["CAT", ["dog"], 23, [56, 3, 8], "AIMLESS", 43, "butter"]
    # write code here
    expected = [["dog"],[56, 3, 8]]
    assert_equal expected, selected
  end

  def test_pick_hashes
    skip
    array = ["cat", {dog: "fido"}, 23, { stuff: "things"}, "aimless", 43]
    # write code here
    expected = [{dog: "fido"}, { stuff: "things"}]
    assert_equal expected, selected
  end

  def test_has_instance_of_Time
    skip
    time = Time.now
    numbers = [time, 1, 3, 2, 4, 9, 8]
    # write code here
    expected = [time]
    assert_equal expected, selected
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
