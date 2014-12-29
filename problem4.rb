# A palindromic number reads the same both ways.
# The largest palindrome made from the product of
# two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product
# of two 3-digit numbers.

def palindrome?(n)
  n.to_s == n.to_s.reverse
end

# x and y are 2 three digit numbers (100-999)
# max is the largest palindrome made from their product.
max = 0
100.upto(999){|x|
  x.upto(999){|y|
    product = x * y
    if palindrome?(product) && product > max then max = product end
  }
}

puts "The largest palindrome made from the product of two 3-digit numbers is #{max}."
