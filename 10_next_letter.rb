# frozen_string_literal: false

def next_letter(letter)
  ascii = letter.bytes
  new_string = ''
  ascii.each do |c| 
    c += 1
    new_string += c.chr 
  end
  new_string
end

print next_letter('Hello')
