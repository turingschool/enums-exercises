gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class TransformCollectionsTest < MiniTest::Unit::TestCase
  # You get the first test for free... it's already passing.
  def test_capitalize
    names = ["alice", "bob", "charlie"]
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end

  # This test is missing a single line of code
  def test_doubles
    numbers = [1, 2, 3, 4, 5]
    doubles = []
    numbers.each do |number|
      # write code here
    end
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  # This test is missing the whole loop
  def test_squares
    skip
    squares = []
    numbers = [1, 2, 3, 4, 5]
    # write code here
    assert_equal [1, 4, 9, 16, 25], squares
  end

  # From here on out, you're pretty much on your own...

  def test_lengths
    skip
    names = ["alice", "bob", "charlie", "david", "eve"]
    # write code here
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes
    skip
    numbers = [234, 10, 9119, 38881]
    # write code here
    assert_equal ["00234", "00010", "09119", "38881"], zip_codes
  end

  def test_normalize_zip_codes_with_long_zip
    skip
    numbers = [234, 10, 9119, 38881, 123456]
    # write code here
    assert_equal ["00234", "00010", "09119", "38881", "00000"], zip_codes
  end

  def test_reverse
    skip
    names = ["alice", "bob", "charlie", "david", "eve"]
    # write code here
    assert_equal ["ecila", "bob", "eilrahc", "divad", "eve"], backwards
  end

  def test_words_with_no_vowels
    skip
    words = ["green", "sheep", "travel", "least", "boat"]
    # write code here
    assert_equal ["grn", "shp", "trvl", "lst", "bt"], without_vowels
  end

  def test_trim_last_letter
    skip
    animals = ["dog", "cat", "mouse", "frog", "platypus"]
    #write code here
    assert_equal ["do", "ca", "mous", "fro", "platypu"], trimmed
  end
end

class TransformCollectionsWithMapTest < MiniTest::Unit::TestCase
  def test_capitalize_with_map
    names = ["alice", "bob", "charlie"]
    capitalized_names = names.map do |name|
      name.capitalize
    end
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end
end

