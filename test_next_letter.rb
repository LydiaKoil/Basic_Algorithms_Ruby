# frozen_string_literal: false

require 'minitest/autorun'
require_relative '10_next_letter'

# test class
class NextLetterTest < Minitest::Test
  def test_single_letter
    assert_equal 'i', next_letter('h')
  end

  def test_word
    assert_equal 'czf', next_letter('bye')
  end
end
