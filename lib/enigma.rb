require './lib/translate'

class Enigma
  attr_reader :translate

  def initialize
    @translate = Translate.new
  end

end
