gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreTheyAllTest < Minitest::Test

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      # write code here
    end
    refute all_zeros
  end

  def test_all_zeros
    skip
    numbers = [0, 0, 0, 0, 0, 0, 0, 0]
    # write code here
    assert all_zeros
  end

  def test_all_gone
    skip
    words = %w(gone gone gone gone gone gone gone)
    # write code here
    assert all_gone
  end

  def test_not_all_gone
    skip
    words = %w(gone gone gone gone gone gone gone yepp)
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

  def test_all_lies
    skip
    lies = [false, false, false, false]
    # write code here
    assert all_false
  end

end

