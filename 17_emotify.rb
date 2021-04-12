# frozen_string_literal: true

def emotify(str)
  str.gsub('smile', ':D').gsub('sad', ':(').gsub('grin', ':)')
end

puts emotify('Make me smile')
puts emotify('Make me grin')
puts emotify('Make me sad')
