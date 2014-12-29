# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143?

#"A composite number is a positive integer that has a
#positive divisor other than one or itself.
#In other words a composite number is any positive integer
#greater than one that is not a prime number."

def largest_prime_factor(n)
  i = 2
  largest = 0
  while i <= n
    if n % i == 0
      while n % i == 0
        n = n / i
        largest = i
        i += 1
      end
    end
    i += 1
  end
  return largest
end

puts largest_prime_factor(600851475143)
