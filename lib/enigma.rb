require './lib/translate'
require './lib/shift'
require './lib/helper'
require 'date'

class Enigma
  attr_reader :translate,
              :shift,
              :helper

  def initialize
    @translate = Translate.new
    @shift = Shift.new
    @helper = Helper.new
  end

  def encrypt(message, key = helper.random_key, date = helper.today(Date.today))
    date, key = key, helper.random_key if key.length == 6
    keys_array = shift.final_shift(key, date)
    {:encryption => translate.do_rotations(message, keys_array),
    :key => key,
    :date => date}
  end

  def decrypt(message, key, date = helper.today(Date.today))
    keys_array = shift.final_shift(key, date).map {|key|-key}
    {:decryption => translate.do_rotations(message, keys_array),
    :key => key,
    :date => date}
  end

end
