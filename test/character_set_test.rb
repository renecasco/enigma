require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character_set'

class CharacterSetTest < Minitest::Test

  def test_it_exists
    character_set = CharacterSet.new
    assert_instance_of CharacterSet, character_set
  end

  def test_it_contains_character_set
    character_set = CharacterSet.new
    expected = ("a".."z").to_a << " "
    assert_equal expected, character_set.list
  end
end
