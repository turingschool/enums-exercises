gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreThereAnyTest < Minitest::Test
  # You get the first test for free... it's already passing.
  def test_has_a_zero
    numbers = [2, 9, 3, 1, 0]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number.zero?
    end
    assert has_zero
  end

  # This test is missing a single line of code
  def test_has_zeros
    skip
    numbers = [3, 1, 0, 7, 9, 0]
    has_zero = false
    numbers.each do |number|
      # write code here
    end
    assert has_zero
  end

  # This test is missing the whole loop
  def test_does_not_have_zero
    skip
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    # write code here
    refute has_zero
  end

  # From here on out, you're pretty much on your own...

  def test_no_alice
    skip
    names = ["chuck", "charlene", "cory", "chris", "carl"]
    # write code here
    refute has_alice
  end

  def test_has_alice
    skip
    names = ["bill", "bob", "burton", "alice", "brandon"]
    # write code here
    assert has_alice
  end

  def test_contains_a_multi_word_phrase
    skip
    names = ['Sure!', 'OK.', 'I have no idea.', 'Really?' 'Whatever.']
    # write code here
    assert has_multi_word_phrase
  end

  def test_no_monkeys
    skip
    animals = ["elephants", "hippos", "jaguars", "pythons"]
    # write code here
    refute has_monkeys
  end
end

class AreThereAnyUsingAnyTest < Minitest::Test
  def test_has_a_zero_using_any
    numbers = [2, 9, 3, 1, 0]
    has_zero = numbers.any? do |number|
      number.zero?
    end
    assert has_zero
  end
end

