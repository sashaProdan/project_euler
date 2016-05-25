
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then
# there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, 
# how many would be used?

# Do not count spaces or hyphens. For example,  342 (three hundred and forty-two) contains 
# 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of 'and' when 
# writing the numbers is in compliance with British usage.


def number_letters_count
  ones =   { 
             1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
             6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten',
             11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
             15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen',
             19 => 'nineteen' 
           }
  
  tens =   { 
             20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 
             70 => 'seventy', 80 => 'eighty', 90 => 'ninety' 
           }

  (1..1000).to_a.map do |num|
    digits = num.to_s.chars.map(&:to_i)
    if num < 20
      num = ones[num]
    elsif num >= 20 && num < 100
      if digits[1] == 0
        num = tens[digits[0] * 10]
      else 
        num = tens[digits[0] * 10] + ' ' + ones[digits[1]]
      end
    elsif num >= 100 && num < 1000
      if digits[1] == 0 && digits[2] == 0
        num = ones[digits[0]] + ' hundred'
      elsif digits[1] == 0 && digits[2] != 0
        num = ones[digits[0]] + ' hundred' + ' and ' + ones[digits[2]]
      elsif ones.include? digits[1..2].join.to_i
        num = ones[digits[0]] + ' hundred' + ' and ' + ones[digits[1..2].join.to_i]
      elsif digits[1] != 0 && digits[2] == 0
        num = ones[digits[0]] + ' hundred' + ' and ' + tens[digits[1] * 10]
      elsif digits[1] != 0 && digits[2] != 0
        num = ones[digits[0]] + ' hundred' + ' and ' + tens[digits[1] * 10] + ' ' + ones[digits[2]]
      end
    elsif num == 1000
      num = 'one thousand'
    end
  end.map { |word| word.gsub(' ', '') }.join.length
end

p number_letters_count  # =>  21124


