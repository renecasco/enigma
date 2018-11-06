require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translate'

class TranslateTest < Minitest::Test

  def test_it_exists
    translate = Translate.new
    assert_instance_of Translate, translate
  end

  def test_it_contains_character_set
    translate = Translate.new
    expected = ("a".."z").to_a << " "
    assert_equal expected, translate.character_set
  end

  def test_it_can_translate_message
    translate = Translate.new
    actual = translate.do_rotations("Hello World!", "02715", Date.parse("1995-08-04"))
    expected = "keder ohulw!"
    assert_equal expected, actual
  end

end
