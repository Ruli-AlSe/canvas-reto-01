# Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

# It should remove all values from list a, which are present in list b.
# array_diff([1,2],[1]) == [2]

# If a value is present in b, all of its occurrences must be removed from the other:
# array_diff([1,1,2],[1]) == [2]

# This kata was taken from https://www.codewars.com/ .

require 'minitest/autorun'

def array_diff(a, b)
  #your code here
  a - b
end


class TestMethod < Minitest::Test

  def test_array_diff
    assert_equal array_diff([1,2], [1]), [2]
    assert_equal array_diff([1,2,3,4,5], [1,4,5]), [2,3]
    assert_equal array_diff([1,5,10,23,4,6,6,6], [1,5,7,6]), [10,23,4]
    assert_equal array_diff([3,5,1,6,10,12], [12,5,6]), [3,1,10]
    assert_equal array_diff([1,2], []), [1,2]
    assert_equal array_diff([3,5,7,9], [1,2,4,6]), [3,5,7,9]
  end
  
end

