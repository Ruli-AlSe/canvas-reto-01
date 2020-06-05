# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

# For example:
# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]

require 'minitest/autorun'

def unique_in_order(iterable)
  iterable = iterable.chars if iterable.class == String
  arr = [iterable.first]

  iterable.each do |elem|
    if(arr.last != elem)
      arr.append(elem)
    end
  end
  arr
end


class TestMethod < Minitest::Test

  def test_unique_in_order
    assert_equal unique_in_order('AAAABBBCCDAABBB'), ['A','B','C','D','A','B']
    assert_equal unique_in_order([1,2,2,3,3]), [1,2,3]
    assert_equal unique_in_order('ABBCcAD'), ['A', 'B', 'C', 'c', 'A', 'D']
  end
  
end

