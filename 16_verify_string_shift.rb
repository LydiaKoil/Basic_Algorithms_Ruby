# frozen_string_literal: false

def shift?(str_a, str_b)
  str1 = str_a.split('')
  str2 = str_b.split('')

  str1.size.times do     
    return true if str1 == str2

    str1.push(str1.shift) # remove first element and push on to same array
  end
  false
end

puts shift?('abcde', 'cdeab')
puts shift?('abc', 'acb')
