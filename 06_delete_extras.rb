# frozen_string_literal: true

def delete_occurrences(arr, max)
  hash = Hash.new(0)
  new_arr = []
  arr.each do |num|
    hash[num] += 1
    new_arr << num unless hash[num] > max
  end

  new_arr
end
# delete_occurrences([1, 1, 1, 1], 2)
# delete_occurrences([true, true, true], 3)
delete_occurrences([13, true, 13, nil], 1)
