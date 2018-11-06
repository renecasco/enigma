require './lib/translate'
require './lib/shift'

class Enigma
  attr_reader :translate, # these attr_reader methods were created for testing 
              :shift

  def initialize
    @translate = Translate.new
    @shift = Shift.new
  end

  def random_key
    Array.new(5){|index|rand(0..9)}.join
  end

  def encrypt(message, key = random_key, date = Date.today)
    keys_array = @shift.final_shift(key, date)
    {:encryption => @translate.do_rotations(message, keys_array),
    :key => key,
    :date => date.strftime('%d%m%y')}
  end

  def decrypt(message, key, date = Date.today)
    keys_array = @shift.final_shift(key, date).map {|key|-key}
    {:decryption => @translate.do_rotations(message, keys_array),
    :key => key,
    :date => date.strftime('%d%m%y')}
  end


end
