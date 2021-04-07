# frozen_string_literal: true

def valid_phone_number?(number)
  !!(number =~ /\([0-9]{3}\) [0-9]{3}-[0-9]{4}$/) # regex pattern matching
end

puts valid_phone_number?('(123) 456-7890')
puts valid_phone_number?('1111)555 2345')
puts valid_phone_number?('098) 123 4567')
