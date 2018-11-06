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

  def test_it_generates_5_digit_random_key
    enigma = Enigma.new
    assert_equal 5, enigma.random_key.length
  end

  def test_it_can_encrypt
    enigma = Enigma.new
    actual = enigma.encrypt("Hello World!", "02715", Date.parse("1995-08-04"))
    expected = {
      :encryption => "keder ohulw!",
      :key => "02715",
      :date => "040895"
    }
    assert_equal expected, actual
  end


end
