require './lib/translate'

class Enigma
  attr_reader :translate

  def initialize
    @translate = Translate.new
  end

  def random_key
    Array.new(5){|i|rand(0..9)}.join
  end

  def encrypt(message, key = random_key, date = Date.today)
    {
    :encryption => translate.do_rotations(message, key, date),
    :key => key,
    :date => date.strftime('%d') + date.strftime('%m') + date.strftime('%y')
    }
  end

end
