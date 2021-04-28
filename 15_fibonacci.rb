# frozen_string_literal: true

def fibonacci(num)
  return num if num.zero? || num == 1

  fibonacci(num - 1) + fibonacci(num - 2)
end

puts fibonacci(0)
puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(4)
puts fibonacci(5)
puts fibonacci(6)
puts fibonacci(7)
puts fibonacci(8)