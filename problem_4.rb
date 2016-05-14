
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 * 99.

# Find the largest palindrome made from the product of two 3-digit numbers.


def palindromic_number
  three_digit = (100...1000).to_a
  three_digit.map do |num1|
    three_digit.map { |num2| num2 * num1 }
  end
  .flatten
  .select { |palindrome| palindrome.to_s.reverse == palindrome.to_s }.max
end

p palindromic_number
