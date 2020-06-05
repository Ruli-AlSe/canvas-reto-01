# Your task is to make a function that can take any non-negative integer as a 
# argument and return it with its digits in descending order. Essentially, rearrange 
# the digits to create the highest possible number.

# Examples:

# Input: 21445 Output: 54421
# Input: 145263 Output: 654321
# Input: 123456789 Output: 987654321

# This kata was taken from https://www.codewars.com/ .

require 'minitest/autorun'

def descending_order(n)
  n.to_s.split('').sort{ |a, b| b <=> a }.join('').to_i
end


class TestMethod < Minitest::Test

  def test_descending_order
    assert_equal descending_order(12), 21
    assert_equal descending_order(12345), 54321
    assert_equal descending_order(1510234666), 6665432110
    assert_equal descending_order(35161012), 65321110
    assert_equal descending_order(931), 931
    assert_equal descending_order(3579), 9753
  end
  
end
