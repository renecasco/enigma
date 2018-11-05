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

  def test_it_returns_keys_in_array
    shift = Shift.new
    actual = shift.the_keys("12345")
    expected = [12, 23, 34, 45]
    assert_equal expected, actual
  end

  def test_it_returns_offsets_in_array
    shift = Shift.new
    actual = shift.the_offsets(Date.parse("2018-11-04"))
    expected = [9, 9, 2, 4]
    assert_equal expected, actual
  end

  def test_it_returns_final_shifts_in_array
    shift = Shift.new
    actual = shift.final("12345", Date.parse("2018-11-04"))
    expected = [21, 32, 36, 49]
    assert_equal expected, actual
  end




end
