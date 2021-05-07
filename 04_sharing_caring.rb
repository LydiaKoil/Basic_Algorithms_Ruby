# frozen_string_literal: false

def sharing(array)
  sorted = array.sort
  hash_nums = {}
  total = 0
  sorted.each_with_index do |val, index|
    next if index.zero?

    hash_nums[val] = val * 0.75
    total += val * 0.25
  end
  hash_nums[sorted[0]] = sorted[0] + total

  array.each_with_index do |val, index|
    array[index] = hash_nums[val]
  end
end

print sharing([4, 1, 4])
print sharing([16, 10, 8])
print sharing([2, 100])
