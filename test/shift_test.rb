require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'

class ShiftTest < Minitest::Test

  def test_it_exists
    shifts = Shift.new
    assert_instance_of Shifts, shifts
  end

  def test_if_character_set_exists
    shifts = Shift.new
    expected = ("a".."z").to_a << " "
    assert_equal expected, shift.characters
  end

  def test_if_key_shift_returns_expected_values_in_array
    shifts = Shift.new
    actual = shift.key("12345")
    expected = [12, 23, 34, 45]
    assert_equal = expected, equal
  end

end
