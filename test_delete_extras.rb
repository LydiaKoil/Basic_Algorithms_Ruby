# frozen_string_literal: true

require 'minitest/autorun'
require_relative '06_delete_extras'

# testclass
class TestDeleteExtras < Minitest::Test
  def test_delete_some_occurrences
    assert_equal [1, 1], delete_occurrences([1, 1, 1, 1], 2)
  end

  def test_delete_all_occurences
    assert_equal [], delete_occurrences([true, true, true], 0)
  end

  def test_no_deletes_necessary
    assert_equal [true, true, true], delete_occurrences([true, true, true], 3)
  end

  def test_array_with_nils
    assert_equal [13, true, nil], delete_occurrences([13, true, 13, nil], 1)
  end

  def test_string_array
    assert_equal ['hi', 'hello', 'ahoy', 'hey'], delete_occurrences(['hi', 'hello', 'ahoy', 'hey', 'hey', 'ahoy'], 1)
  end
end
