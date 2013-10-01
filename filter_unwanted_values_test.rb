gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FilterUnwantedValuesTest < Minitest::Test
  # You get the first test for free... it's already passing.
  def test_remove_zeros
    numbers = [2, 93, 7, 0, 0, 1, 0, 31, 0, 368]
    filtered = []
    numbers.each do |number|
      filtered << number unless number.zero?
    end
    assert_equal [2, 93, 7, 1, 31, 368], filtered
  end

  # This test is missing a single line of code
  def test_remove_vowels
    skip
    letters = "all your base are belong to us".chars
    remaining = []
    letters.each do |letters|
      # write code here
    end
    assert_equal "ll r bs r blng t s", remaining.join
  end

  # This test is missing the whole loop
  def test_remove_numbers_divisible_by_3
    skip
    numbers = (1..20)
    remaining = []
    # write code here
    expected = [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20]
    assert_equal expected, remaining
  end

  # From here on out, you're pretty much on your own...

  def test_remove_words_with_more_than_three_letters
    skip
    words = [
      "pill", "bad", "finger", "cat",
      "blue", "dog", "table", "red"
    ]
    # write code here
    assert_equal ["bad", "cat", "dog", "red"], remaining
  end

  def test_remove_words_ending_in_e
    skip
    words = [
      "are", "you", "strike",
      "thinking", "belt", "piece",
      "warble", "sing", "pipe"
    ]
    # write code here
    assert_equal ["you", "thinking", "belt", "sing"], remaining
  end

  def test_remove_words_ending_in_ing
    skip
    words = [
      "bring", "finger", "drought", "singing",
      "hat", "shoehorning", "purposeful"
    ]
    # write code here
    assert_equal ["finger", "drought", "hat", "purposeful"], remaining
  end

  def test_remove_numbers
    skip
    array = ["cat", "dog", 23, 56, "aimless", 43]
    # write code here
    assert_equal ["cat", "dog", "aimless"], remaining
  end

  def test_remove_floats
    skip
    array = ["cat", "dog", 32.333, 23, 56, "aimless", 43.2]
    # write code here
    assert_equal ["cat", 23, 56, "dog", "aimless"], remaining
  end

  def test_remove_animals_starting_with_vowels
    skip
    animals = ["aardvark", "bonobo", "cat", "dog", "elephant"]
    # write code here
    assert_equal ["bonobo", "cat", "dog"], remaining
  end

  def test_remove_upcased_words
    skip
    array = ["CAT", ["dog"], 23, [56, 3, 8], "AIMLESS", 43, "butter"]
    # write code here
    assert_equal [["dog"], 23, [56, 3, 8], 43, "butter"], remaining
  end

  def test_remove_arrays
    skip
    array = ["cat", ["dog"], 23, [56, 3, 8], "aimless", 43, "butter"]
    # write code here
    assert_equal ["cat", 23, "aimless", 43, "butter"], remaining
  end

  def test_remove_hashes
    skip
    array = ["cat", {dog: "fido"}, 23, { stuff: "things"}, "aimless", 43]
    # write code here
    assert_equal ["cat", 23, "aimless", 43], remaining
  end
end

class FilterUnwantedValuesUsingRejectTest < Minitest::Test
  def test_remove_zeros_using_reject
    numbers = [2, 93, 7, 0, 0, 1, 0, 31, 0, 368]
    filtered = numbers.reject do |number|
      number.zero?
    end
    assert_equal [2, 93, 7, 1, 31, 368], filtered
  end
end

