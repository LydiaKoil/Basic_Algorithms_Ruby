# frozen_string_literal: true

def largest_product(array)
  array.sort!
  sum1 = array[0] * array[1] * array [-1]
  sum2 = array[-1] * array[-2] * array [-3]
  max = sum1 > sum2 ? sum1 : sum2

end

puts largest_product([-10, -10, 5, 2])
