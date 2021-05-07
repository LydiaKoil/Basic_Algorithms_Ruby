# frozen_string_literal: true

def count_lone(num)
  num = num.to_s.split('')
  count = 0

  num.each_with_index do |n, index|
    count += 1 if index.zero? && n == '1' && num[index + 1] != '1'
    count += 1 if index != 0 && n == '1' && num[index - 1] != '1'
  end
  puts count
end

# count_lone(101)
count_lone(1191)
count_lone(1111)
count_lone(462)