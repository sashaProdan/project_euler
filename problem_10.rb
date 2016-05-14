
# The sum of the primes below 10 is 2 + 3 + 5 = 17.
# Find the sum of all primes below two million.

require 'prime'

def sum_of_primes(ceiling)
  (1...ceiling).select { |num| Prime.prime?(num) }.inject(:+)
end

p sum_of_primes(2e6)
