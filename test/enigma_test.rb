require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translate'
require './lib/enigma'
require './lib/helper'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_it_has_translate
    enigma = Enigma.new
    assert_instance_of Translate, enigma.translate
  end

  def test_it_has_helper
    enigma = Enigma.new
    assert_instance_of Helper, enigma.helper
  end

  def test_it_has_shift
    enigma = Enigma.new
    assert_instance_of Shift, enigma.shift
  end

  def test_it_can_encrypt
    enigma = Enigma.new
    actual = enigma.encrypt("Hello World!", "02715", "040895")
    expected = {
      :encryption => "keder ohulw!",
      :key => "02715",
      :date => "040895"
    }
    assert_equal expected, actual
  end

  def test_it_can_encrypt_without_date
    enigma = Enigma.new
    helper = Helper.new
    actual = enigma.encrypt("Hello World!", "02715")
    expected_date = helper.today(Date.today)
    actual_date = actual[:date]
    assert_equal expected_date, actual_date
    assert_instance_of String, actual[:encryption]
    assert_equal  12, actual[:encryption].length
  end

  def test_it_can_encrypt_without_date_and_key
    enigma = Enigma.new
    helper = Helper.new
    actual = enigma.encrypt("Hello World!")
    expected_date = helper.today(Date.today)
    actual_date = actual[:date]
    assert_equal expected_date, actual_date
    assert_instance_of String, actual[:encryption]
    assert_equal  12, actual[:encryption].length
    assert_instance_of String, actual[:key]
    assert_equal  5, actual[:key].length
  end

  def test_it_can_decrypt
    enigma = Enigma.new
    actual = enigma.decrypt("keder ohulw!", "02715", "040895")
    expected = {
      :decryption => "hello world!",
      :key => "02715",
      :date => "040895"
    }
    assert_equal expected, actual
  end


end
