# frozen_string_literal: false

def spreadsheet(num)
  alphabet = ('A'..'Z').to_a
  str = ''
  while num.positive?
    rem = num % 26
    if rem.zero?
      str << 'Z'
      num = (num / 26) - 1
    else
      str << alphabet[rem - 1]
      num /= 26
    end
  end

  str.reverse
end

puts spreadsheet(52)
