class Shift
  attr_reader :characters

  def initialize
    @characters = ("a".."z").to_a << " "
  end

  def the_keys(keys)
    characters = keys.chars
    characters.map.with_index do |character, index|
      if index < 4
        character += characters[index + 1]
        character.to_i
      end
    end.compact
  end




end
