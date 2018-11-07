require 'minitest/autorun'
require 'minitest/pride'
require './lib/helper'

class HelperTest < Minitest::Test

  def test_it_exists
    helper = Helper.new
    assert_instance_of Helper, helper
  end

  def test_it_generates_5_digit_random_key
    helper = Helper.new
    assert_equal 5, enigma.random_key.length
  end

  def test_it_coverts_date_format
    helper = Helper.new
    assert_equal "040895", date_conversion(Date.parse("1995-08-04"))
  end


end
