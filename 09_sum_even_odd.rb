# frozen_string_literal: false

# method1: use hash?
# method2: use ascii values?

def alpha?(sentence)
  sentence.downcase!
  indexes = ('a'..'z').each_with_index.map { |l, i| [l, i + 1] }.to_h
  sum = 0
  sentence.split('').each do |c|
    sum += indexes[c] if indexes.key?(c)
  end
  sum % 2.zero ? true : false
end

puts alpha?('alexa')
