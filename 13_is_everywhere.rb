# frozen_string_literal: true

def everywhere?(arr, num)
  result = true
  arr.each_with_index do |val, index|
    next if arr[index + 1].nil?

    result = false if val != num && arr[index + 1] != num
  end

  result
end

puts everywhere?([1, 2, 1, 3], 1)
puts everywhere?([1, 2, 1, 3], 2)
puts everywhere?([1, 2, 1, 3, 4], 1)
