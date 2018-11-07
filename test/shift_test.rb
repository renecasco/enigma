require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new
    assert_instance_of Shift, shift
  end

  def test_it_returns_keys_in_array
    shift = Shift.new
    actual = shift.the_keys("12345")
    expected = [12, 23, 34, 45]
    assert_equal expected, actual
  end

  def test_it_returns_offsets_in_array
    shift = Shift.new
    actual = shift.the_offsets("041118")
    expected = [9, 9, 2, 4]
    assert_equal expected, actual
  end

  def test_final_shift_returns_sum_of_keys_and_offsets
    shift = Shift.new
    actual = shift.final_shift("12345", "041118")
    expected = [21, 32, 36, 49]
    assert_equal expected, actual
  end

end
