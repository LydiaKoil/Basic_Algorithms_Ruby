# frozen_string_literal: false

def gcd(num1, num2)
  divisor = num1 < num2 ? num1 : num2
  gcd2(num1, num2, divisor)
end

def gcd2(num1, num2, divisor)
  return divisor if (num1 % divisor).zero? && (num2 % divisor).zero?

  gcd2(num1, num2, divisor - 1)
end

puts gcd(100, 10)
puts gcd(1, 3)
puts gcd(5, 7)
puts gcd(2, 6)