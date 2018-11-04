require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/shifts'

class ShiftsTest < Minitest::Test

  def test_it_exists
    shifts = Shifts.new
    assert_instance_of Shifts, shifts
  end

  def test_if_character_set_exists
    shifts = Shifts.new
    expected = ("a".."z").to_a << " "
    assert_equal expected, shifts.characters
  end


end
