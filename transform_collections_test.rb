gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class TransformCollectionsTest < Minitest::Test
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

class TransformCollectionsWithMapTest < Minitest::Test
  def test_capitalize_with_map
    names = ["alice", "bob", "charlie"]
    capitalized_names = names.map do |name|
      name.capitalize
    end
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end
end

class TransformCollectionsWithGroupByTest < Minitest::Test
  def test_group_by_length
    words = ["sue", "alice", "steve", "sally", "adam", "fort", "tops", "dog", "cat"]
    words_by_length = words.group_by do |word|
      word.length
    end
    assert_equal({3 => ["sue", "dog", "cat"],
                  4 => ["adam", "fort", "tops"],
                  5 => ["alice", "steve", "sally"]}, words_by_length)
  end

  def test_group_even_and_odd
    skip
    numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    # write code here
    assert_equal({1=>[1, 1, 3, 5, 13, 21, 55], 0=>[2, 8, 34]}, odd_and_even)
  end

  def test_group_by_first_letter
    skip
    words = ["ant", "axis", "albatross", "bolt", "badge", "butter", "car", "cdr", "column"]
    # write code here
    assert_equal({"a"=>["ant", "axis", "albatross"],
                  "b"=>["bolt", "badge", "butter"],
                  "c"=>["car", "cdr", "column"]}, words_by_first_letter)
  end

  def test_group_by_frequency
    skip
    words = ["one", "two", "three", "two", "three", "three"]
    # write code here
    assert_equal({"one"=>["one"],
                  "two"=>["two", "two"],
                  "three"=>["three", "three", "three"]}, words_by_frequency)
  end
end
