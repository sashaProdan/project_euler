# How many Sundays fell on the first of the month during the 
# twentieth century (1 Jan 1901 to 31 Dec 2000)?

require 'date'

def counting_sundays
  (Date.new(1901, 1, 1)..Date.new(2000, 12, 31)).to_a.select do |date|
    date.mday == 1 && date.wday == 0
  end.count
end

p counting_sundays  # => 171