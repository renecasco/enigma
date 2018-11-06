require './lib/shift'
require 'pry'

class Translate
  attr_reader :character_set

  def initialize
    @character_set = ("a".."z").to_a << " "
    @shift = Shift.new
  end

  def do_rotations(message, key, date)
    shifts_array = @shift.final_shift(key, date)
    message.downcase.chars.map.with_index do |char, index|
      if @character_set.include?(char)
        rotated_character_set = @character_set.rotate(shifts_array[index % 4])
        char_index = @character_set.find_index(char)
        rotated_character_set[char_index]
      else
        char
      end
    end.join
  end

end
