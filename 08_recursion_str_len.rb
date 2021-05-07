# frozen_string_literal: true

def length(str)
  return 0 if str.empty?

  1 + length(str.chop)
end

puts length('')
