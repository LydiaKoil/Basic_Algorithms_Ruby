# frozen_string_literal: false

require 'minitest/autorun'
require_relative '07_recursion_gcd'

# test class
class TestRecursionGcd < Minitest::Test
  def test_first_number_smaller
    assert_equal 10, gcd(10, 20)
  end

  def test_first_number_bigger
    assert_equal 10, gcd(20, 10)
  end

  def test_equal_numbers
    assert_equal 10, gcd(10, 10)
  end

  def test_numbers_not_divisible_by_eachother
    assert_equal 1, gcd(5, 7)
  end

end
