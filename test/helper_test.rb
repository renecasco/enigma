require 'minitest/autorun'
require 'minitest/pride'
require './lib/helper'

class HelperTest < Minitest::Test

  def test_it_exists
    helper = Helper.new
    assert_instance_of Helper, helper
  end


end
