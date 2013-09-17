gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreTheyAllTest < Minitest::Test

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      # write code here
     all_zeros = false if number !=0
    end
    refute all_zeros
  end

  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0, 0]
    # write code here
    all_zeros = true
    numbers.each { |number| all_zero = false if number != 0 }
    assert all_zeros
  end

  def test_all_gone
    all_gone = true
    words = %w(gone gone gone gone gone gone gone)
    # write code heroe
    words.each { |word| all_gone = false if word != 'gone'}
    assert all_gone
  end

  def test_not_all_gone
    all_gone = true 
    words = %w(gone gone gone gone gone gone gone yepp)
    # write code here
    words.each { |word| all_gone = false if word != "gone" }
    refute all_gone
  end

  def test_all_empty
    all_empty = true
    words = ["", "", "", "", ""]
    # write code here
    words.each { |word| all_empty = false if word != "" } 
    assert all_empty
  end

  def test_not_all_empty
    all_empty = true
    words = ["full", "", "", "", "", ""]
    # write code here
    words.each { |word| all_empty = false if word != "" } 
    refute all_empty
  end
end

