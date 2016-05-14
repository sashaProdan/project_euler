# If we list all the natural numbers below 10 that are multiples of 3 and 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 and 5 below 1000.


def multiples(number)
  new_arr = []
  (1...number).to_a.each { |num| new_arr << num if num % 3 == 0 || num % 5 == 0 }
  new_arr.inject(0, :+)                   
end

p multiples(1000)