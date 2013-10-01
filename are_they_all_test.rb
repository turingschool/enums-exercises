gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreTheyAllTest < Minitest::Test
  # You get the first test for free... it's already passing.
  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    refute all_zeros
  end

  # This test is missing a single line of code
  def test_all_zeros
    skip
    numbers = [0, 0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      # write code here
    end
    assert all_zeros
  end

  # This test is missing the whole loop
  def test_all_gone
    skip
    words = %w(gone gone gone gone gone gone gone)
    all_gone = true
    # write code here
    assert all_gone
  end

  # From here on out, you're pretty much on your own...

  def test_not_all_gone
    skip
    words = %w(gone gone gone gone gone gone gone yepp)
    # write code here
    refute all_gone
  end

  def test_not_all_gone_with_yepp_in_middle
    skip
    words = %w(gone gone gone yepp gone gone gone gone)
    # write code here
    refute all_gone
  end

  def test_all_empty
    skip
    words = ["", "", "", "", ""]
    # write code here
    assert all_empty
  end

  def test_not_all_empty
    skip
    words = ["full", "", "", "", "", ""]
    # write code here
    refute all_empty
  end

  def test_all_uppercase
    skip
    words = %w(DOUGHNUT CASH MAIN bOWl SMACK SAND)
    # write code here
    refute all_uppercase
  end

  def test_all_lies
    skip
    lies = [false, false, false, false]
    # write code here
    assert all_false
  end

  def test_all_integers
    skip
    numbers = [3, 1, 3, 2, 4, 9, 8]
    # write code here
    assert all_integers
  end

  def test_all_not_integers
    skip
    numbers = [3, 1, 3, 2, 4, 9, 'cat']
    # write code here
    refute all_integers
  end

  def test_all_floats
    skip
    floats = [3.2, 1.4, 3.5, 2.6, 4.9, 9.1, 8.0]
    # write code here
    assert all_floats
  end

  def test_all_not_floats
    skip
    floats = [3, 1.4, 3.5, 2.6, 4.9, 9.1, 8.0]
    # write code here
    assert all_floats
  end

end

class AreTheyAllUsingAllTest < Minitest::Test
  def test_not_all_zeros_using_all
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
    end
    refute all_zeros
  end
end

