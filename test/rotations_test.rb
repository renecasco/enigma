require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotations'

class RotationsTest < Minitest::Test

  def test_it_exists
    rotation = Rotations.new
    assert_instance_of Rotations, rotation
  end

  def test_if_character_set_exists
    rotation = Rotations.new
    assert_equal ("a".."z")to_a
  end

end
