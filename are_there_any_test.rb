gem 'minitest'
require 'minitest'
require 'minitest/pride'

class AreThereAnyTest < Minitest::Test
  def test_has_a_zero
    numbers = [2, 9, 3, 1, 0]
    has_zero = false
    numbers.each do |number|
      # write code here
    end
    assert has_zero
  end

  def test_has_zeros
    skip
    numbers = [3, 1, 0, 7, 9, 0]
    # write code here
    assert has_zero
  end

  def test_does_not_have_zero
    skip
    numbers = [3, 1, 3, 2, 4, 9, 8]
    # write code here
    refute has_zero
  end

  def test_no_alice
    skip
    names = %w(chuck charlene cory chris carl)
    # write code here
    refute has_alice
  end

  def test_has_alice
    skip
    names = %w(bill bob burton alice brandon)
    # write code here
    assert has_alice
  end
end

