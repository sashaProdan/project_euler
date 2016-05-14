
# The sum of the squares of the first ten natural numbers is,
   
#                     1^2 + 2^2 + ... + 10^2 = 385 (^ => exponent)

# The square of the sum of the first ten natural numbers is,

#                     (1 + 2 + ... + 10)^2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten
# natural numbers and the square of the sum is 3025 - 385 = 2640.

# Find the difference between the sum of the squares of the first 
# one hundred natural numbers and the square of the sum.


def sum_square_difference
  numbers = (1..100).to_a
  (numbers.inject(:+) ** 2) - (numbers.map { |num| num ** 2 }.inject(:+) )
end

p sum_square_difference
