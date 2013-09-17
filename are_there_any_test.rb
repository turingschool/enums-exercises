gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreThereAnyTest < Minitest::Test
  def test_has_a_zero
    numbers = [2, 9, 3, 1, 0]
    has_zero = false
    numbers.each do |number|
      # write code here
      has_zero = true if number == 0
    end
    assert has_zero
  end

  def test_has_zeros
    has_zero = false 
    numbers = [3, 1, 0, 7, 9, 0]
    # write code here
    numbers.each { |number| has_zero = true if number == 0 }
    assert has_zero
  end

  def test_does_not_have_zero
    has_zero = false 
    numbers = [3, 1, 3, 2, 4, 9, 8]
    # write code here
    numbers.each { |number| has_zero == true if number == 0 }
    refute has_zero
  end

  def test_no_alice
    has_alice = false 
    names = %w(chuck charlene cory chris carl)
    # write code here
    names.each { |name| has_zero = true if name == 'alice' }
    refute has_alice
  end

  def test_has_alice
    has_alice = false 
    names = %w(bill bob burton alice brandon)
    # write code here
    names.each { |name| has_alice = true if name == 'alice' }
    assert has_alice
  end

  def test_no_monkeys
    skip
    animals = %w(elephants hippos jaguars pythons)
    # write code here
    refute has_monkeys
  end
end

