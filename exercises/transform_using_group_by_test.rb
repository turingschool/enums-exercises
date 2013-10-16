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

  def group_by_order_of_magnitude
    numbers = [1, 3, 500, 200, 4000, 3000, 10000, 90, 20, 500000]
    assert_equal({1=>[1, 3],
                  3=>[500, 200],
                  4=>[4000, 3000],
                  5=>[10000],
                  2=>[90, 20],
                  6=>[500000]}, nums_by_order_of_magnitude)
  end
end
