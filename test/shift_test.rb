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

  def test_if_character_set_exists
    shift = Shift.new
    expected = ("a".."z").to_a << " "
    assert_equal expected, shift.characters
  end

  def test_if_key_shift_returns_expected_values_in_array
    shift = Shift.new
    actual = shift.key_shift("12345")
    expected = [12, 23, 34, 45]
    assert_equal = expected, equal
  end

end
