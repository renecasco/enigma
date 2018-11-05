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
end
