require 'pry'

class Translate
  attr_reader :character_set

  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def do_rotations(message, keys)
    message.downcase.chars.map.with_index do |char, index|
      if @character_set.include?(char)
        char_index = @character_set.find_index(char)
        rotated_character_set = @character_set.rotate(keys[index % 4])
        rotated_character_set[char_index]
      else
        char
      end
    end.join
  end

end
