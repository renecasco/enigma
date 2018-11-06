require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translate'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_it_has_translate
    enigma = Enigma.new
    assert_instance_of Translate, enigma.translate
  end

  def test_it_can_encrypt
    enigma = Enigma.new
    actual = enigma.encrypt("Hello World!", "02715", Date.parse("1995-08-04"))
    expected = "keder ohulw!"
    assert_equal expected, actual
  end


end
