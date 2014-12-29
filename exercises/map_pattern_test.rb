gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class MapPatternTest < Minitest::Test

  def test_capitalize
    names = ["alice", "bob", "charlie"]
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end

  def test_doubles
    numbers = [1, 2, 3, 4, 5]
    doubles = []
    numbers.each do |number|
      doubles.push(number * 2)
    end
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares
    
    numbers = [1, 2, 3, 4, 5]
    squares = []
    numbers.each do |number|
      squares << number ** 2
    end
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths
    
    names = ["alice", "bob", "charlie", "david", "eve"]
    lengths = []
    names.each do |name|
      lengths << name.length 
    end
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes
    
    numbers = [234, 10, 9119, 38881]
    zip_codes = []
    numbers.each do |number|
      zip_codes << number.to_s.rjust(5, '0')
    end
    assert_equal ["00234", "00010", "09119", "38881"], zip_codes
  end

  def test_backwards
    
    names = ["alice", "bob", "charlie", "david", "eve"]
    # Your code goes here
    backwards = Array.new
    names.each do |n|
      backwards.push(n.reverse)
    end

    assert_equal ["ecila", "bob", "eilrahc", "divad", "eve"], backwards
  end

  def test_words_with_no_vowels
    
    words = ["green", "sheep", "travel", "least", "boat"]
    # Your code goes here
    without_vowels = []
    words.each do |n|
      without_vowels << n.gsub(/[aeiou]/, "")
    end
    assert_equal ["grn", "shp", "trvl", "lst", "bt"], without_vowels
  end

  def test_trim_last_letter
    
    animals = ["dog", "cat", "mouse", "frog", "platypus"]
    # Your code goes here
    trimmed = []
    animals.each do |n|
      trimmed.push(n.chop)
      
    end
    assert_equal ["do", "ca", "mous", "fro", "platypu"], trimmed
  end

end