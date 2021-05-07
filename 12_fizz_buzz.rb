# frozen_string_literal: false

def fizzbuzz
  (1..100).each do |num|
    str = ''
    str << 'fizz' if (num % 3).zero?
    str << 'buzz' if (num % 5).zero?
    str.empty? ? (puts num) : (puts str)
  end
end
fizzbuzz
