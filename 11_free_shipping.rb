# frozen_string_literal: true

def free_shipping?(hash)
  sum = 0
  hash.each do |_, value|
    sum += value
  end
  sum > 50
end
puts free_shipping?({ 'Monopoly' => 11.99, 'Secret Hitler' => 35.99, 'Bananagrams' => 13.99 })
